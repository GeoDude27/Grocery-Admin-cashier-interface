   M S B A M L   `   `   `  ����G  CGroceryStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GroceryStore.ViewsGroceryStore.Views  5      $    GroceryStore.Views.ReceiptView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:GroceryStore.Views     5      .��5	      � 
�����p�  � ColumnDefinitions  5
   
   �� 5      6!    � RowDefinitions 5   
   �� 5      $
��120* �6   6,   �� 5      $	��20* �6   6+   .+�5   
   &   System.Windows.Controls.DataGrid     CanUserAddRows$ False��6;      CanUserDeleteRows$ False��6R      MinColumnWidth$	 160Q�6l      ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 6�      HeadersVisibility$ Column=�6�   ��6   �� *receiptProducts+6�   � 5   
   $��Center=�6   $
��Left=�6/   $��1��6J   .+�5      �� $��Total Amount: ��6   $��20(�6-   $��DemiBold"�6;   $��20,0,0,0q�6Q   �� 5      $��20,0,0,0q�65   $��20(�6G   $��Center=�6U    �� TextAlignment$ Right=�6p   ��6   �� *totalAmount+6p   5      �� 5   
   $��Logout��67   $��16(�6H   $��Right=�6V   $��1��6r   $��Center=�6   $��DemiBold"�6�   $��30��6�   $	��100��6�   $��0,0,30,0q�6�   ��6   �� *UpdateViewCommand+6�   �� 5   
   $��3��6?   ��6   �� *SelectedViewModel+6R   �� 5   
   $��Another receipt��67   $��16(�6Q   $
��Left=�6_   $��1��6z   $��Center=�6�   $��DemiBold"�6�   $��30��6�   $	��150��6�   $��	400,0,0,0q�6�   ��6   �� *BackToCartCommand+6�   5      5      