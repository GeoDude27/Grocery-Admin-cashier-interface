using System;
using System.ComponentModel;

namespace GroceryStore.Models
{
    class Product : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string propName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propName));
        }

        
        private int id;
        public int Id
        {
            get { return id; }
            set { id = value; OnPropertyChanged("QR"); }
        }

        private string name;
        public string Name
        {
            get { return name; }
            set { name = value; OnPropertyChanged("Name"); }
        }

        private decimal price;
        public decimal Price
        {
            get { return price; }
            set { price = value; OnPropertyChanged("Price"); }
        }

        private int quantity;
        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; OnPropertyChanged("Quantity"); }
        }

        private DateTime expiryDate; 
        public DateTime ExpiryDate
        {
            get { return expiryDate; }
            set { expiryDate = value; OnPropertyChanged("ExpiryDate"); }
        }
    }
}
