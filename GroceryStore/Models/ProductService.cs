using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Windows;
using Microsoft.Data.SqlClient;

namespace GroceryStore.Models
{
    class ProductService
    {
        private string connString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=SuperMart;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        // Adaugă un produs în baza de date
        public bool addProduct(Product p)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connString))
                {
                    connection.Open();

                    // Verifică dacă produsul există deja
                    string checkQuery = "SELECT COUNT(*) FROM Product WHERE Id = @Id";
                    using (SqlCommand checkCmd = new SqlCommand(checkQuery, connection))
                    {
                        checkCmd.Parameters.AddWithValue("@Id", p.Id);
                        int count = (int)checkCmd.ExecuteScalar();
                        if (count > 0)
                        {
                            MessageBox.Show("Product with this ID already exists.");
                            return false;
                        }
                    }

                    string query = "INSERT INTO Product (ID, Name, Price, Quantity, Expiry_date) VALUES (@Id, @Name, @Price, @Quantity, @Expiry_date)";
                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@Id", p.Id);
                        cmd.Parameters.AddWithValue("@Name", p.Name);
                        cmd.Parameters.AddWithValue("@Price", p.Price);
                        cmd.Parameters.AddWithValue("@Quantity", p.Quantity);
                        cmd.Parameters.AddWithValue("@Expiry_date", p.ExpiryDate);

                        int insertedRows = cmd.ExecuteNonQuery();
                        return insertedRows >= 1;
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine($"SQL Error adding product: {ex.Message}");
                MessageBox.Show($"SQL Error adding product: {ex.Message}");
                return false;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"General Error adding product: {ex.Message}");
                MessageBox.Show($"General Error adding product: {ex.Message}");
                return false;
            }
        }

        // Șterge un produs cu un anumit ID
        public bool deleteProduct(int ID)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connString))
                {
                    connection.Open();
                    string query = "DELETE FROM Product WHERE Id = @Id";
                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@Id", ID);

                        int rows = cmd.ExecuteNonQuery();
                        return rows >= 1;
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine($"SQL Error deleting product: {ex.Message}");
                MessageBox.Show($"SQL Error deleting product: {ex.Message}");
                return false;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"General Error deleting product: {ex.Message}");
                MessageBox.Show($"General Error deleting product: {ex.Message}");
                return false;
            }
        }

        // Returnează datele din baza de date într-o listă
        public ObservableCollection<Product> getProducts()
        {
            ObservableCollection<Product> products = new ObservableCollection<Product>();
            try
            {
                using (SqlConnection con = new SqlConnection(connString))
                {
                    con.Open();
                    string query = "SELECT * FROM Product";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            while (dr.Read())
                            {
                                Product p = new Product
                                {
                                    Id = Convert.ToInt32(dr["ID"]),
                                    Name = Convert.ToString(dr["Name"]),
                                    Price = Convert.ToDecimal(dr["Price"]),
                                    Quantity = Convert.ToInt32(dr["Quantity"]),
                                    ExpiryDate = Convert.ToDateTime(dr["Expiry_date"])
                                };
                                products.Add(p);
                            }
                        }
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine($"SQL Error retrieving products: {ex.Message}");
                MessageBox.Show($"SQL Error retrieving products: {ex.Message}");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"General Error retrieving products: {ex.Message}");
                MessageBox.Show($"General Error retrieving products: {ex.Message}");
            }
            return products;
        }

        // Verifică dacă un produs este disponibil în baza de date
        public bool isProductAvailable(Product p)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connString))
                {
                    connection.Open();
                    string query = "SELECT Quantity FROM Product WHERE Id = @Id";
                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@Id", p.Id);
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.Read())
                            {
                                int availableQuantity = Convert.ToInt32(dr["Quantity"]);
                                return p.Quantity <= availableQuantity;
                            }
                        }
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine($"SQL Error checking product availability: {ex.Message}");
                MessageBox.Show($"SQL Error checking product availability: {ex.Message}");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"General Error checking product availability: {ex.Message}");
                MessageBox.Show($"General Error checking product availability: {ex.Message}");
            }
            return false;
        }

        // Actualizează baza de date cu lista de produse
        public void updateDatabase(ObservableCollection<Product> products)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connString))
                {
                    connection.Open();
                    foreach (Product p in products)
                    {
                        string query;
                        if (p.Quantity == 0)
                        {
                            query = "DELETE FROM Product WHERE Id = @Id";
                        }
                        else
                        {
                            query = "UPDATE Product SET Quantity = @Quantity, Expiry_date = @Expiry_date WHERE Id = @Id";
                        }

                        using (SqlCommand cmd = new SqlCommand(query, connection))
                        {
                            cmd.Parameters.AddWithValue("@Id", p.Id);
                            cmd.Parameters.AddWithValue("@Quantity", p.Quantity);
                            cmd.Parameters.AddWithValue("@Expiry_date", p.ExpiryDate);
                            cmd.ExecuteNonQuery();
                        }
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine($"SQL Error updating database: {ex.Message}");
                MessageBox.Show($"SQL Error updating database: {ex.Message}");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"General Error updating database: {ex.Message}");
                MessageBox.Show($"General Error updating database: {ex.Message}");
            }
        }
    }
}
