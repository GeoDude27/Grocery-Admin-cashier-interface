   M S B A M L   `   `   `  ����G  CGroceryStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GroceryStore.ViewsGroceryStore.Views  5      "    GroceryStore.Views.AdminView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:GroceryStore.Views     5      .��5	      � 
���\\��  � ColumnDefinitions  5
   
   �� 5      $	��150 �6   �� 5      $	��260 �6   �� 5      $	��390 �6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��Admin Dashboard��6   $��DemiBold"�6+    �� TextAlignment$ Center=�6A   $��30(�6X   $��3��6f   �� 5   
   $��Add New Product��6   $��1��6+   $��Center=�68   $��Center=�6U   $
��Bold"�6p   $��24(�6�   $
��Wrap=�6�   $��2��6�   �� 5   
   $��Product QRCode:��6   $��2��6*   $��Center=�67   $��Center=�6T   $
��Bold"�6o   $��18(�6�   �� 5   
   $��Product Name:��6   $��3��6(   $��Center=�65   $��Center=�6R   $
��Bold"�6m   $��18(�6   �� 5   
   $��Price:��6   $��4��6!   $��Center=�6.   $��Center=�6K   $
��Bold"�6f   $��18(�6x   �� 5   
   $��	Quantity:��6   $��5��6$   $��Center=�61   $��Center=�6N   $
��Bold"�6i   $��18(�6{   �� 5   
   $��Expiry Date:��6   $��6��6'   $��Center=�64   $��Center=�6Q   $
��Bold"�6l   $��18(�6~   �� 5    
   $��2��6K   $��1��6X   $��10,10,10,10q�6h   $��Center=�6}   ��6   �� *ID+ �� UpdateSourceTrigger$ PropertyChanged=�6}   �� 5!   
   $��3��6M   $��1��6Z   $��10,10,10,10q�6j   $��Center=�6   ��6   �� *Name+$ PropertyChanged=�6   �� 5"   
   $��4��6N   $��1��6[   $��10,10,10,10q�6k   $��Center=�6�   ��6   �� *Price+$ PropertyChanged=�6�   �� 5#   
   $��5��6Q   $��1��6^   $��10,10,10,10q�6n   $��Center=�6�   ��6   �� *
Quantity+$ PropertyChanged=�6�   �� 5$   
   $��6��6S   $��1��6`   $��10,10,10,10q�6p   $��Center=�6�   ��6   �� *
ExpiryDate+$ PropertyChanged=�6�   �� 5%   
   $��Add Product��60   $��Center=�6F   $��7��6c   $��1��6p   $��Center=�6�   $��18(�6�   $��DemiBold"�6�   $��40��6�   $	��150��6�   ��6   �� *
AddCommand+6�   �� 5&   
   $��Delete Product��6   $��2��6*   $��Center=�6:   $��1��6W   $��24(�6d   $
��Bold"�6r   $
��Wrap=�6�   $��Center=�6�   �� 5'   
   $��2��6   $��Center=�6$   $��2��6A   $%��Enter Product QR Code to Delete��6N   $��18(�6u   $
��Bold"�6�   $
��Wrap=�6�   $��Center=�6�   �� 5(   
   $	��QR:��6   $��3��6   $��2��6+   $
��Left=�6;   $��Center=�6V   $��18(�6q   $
��Bold"�6   $��5,0,0,0q�6�   �� 5)   
   $��3��6N   $��2��6[   $��45,10,45,10q�6k   $��Center=�6�   $��Stretch=�6�   ��6   �� *delID+$ PropertyChanged=�6�   �� 5*   
   $��Delete Product��63   $��4��6L   $��2��6Y   $��Center=�6i   $��Center=�6�   $��18(�6�   $��DemiBold"�6�   $��40��6�   $	��150��6�   ��6   �� *DeleteCommand+6�   �� 5+   
   $��Products��67   $��7��6S   $��2��6`   $��15(�6p   $��DemiBold"�6~   $��View Products��6�   $��Center=�6�   $��Center=�6�   $��30��6�   $	��120��6�   ��6   �� *UpdateViewCommand+6�   �� 5,   
   $��Logout��67   $��8��6Q   $��2��6^   $��15(�6n   $��DemiBold"�6|   $��Logout��6�   $��Center=�6�   $��Center=�6�   $��30��6�   $	��120��6�   ��6   �� *UpdateViewCommand+6�   �� 5-   
   $��8��6?   $��3��6P   ��6   �� *SelectedViewModel+6P   �� 5.   
   $��Products��67   $��6��6S   $��2��6`   $��15(�6p   $��DemiBold"�6~   $��View Products��6�   $	��Top=�6�   $��Center=�6�   $��30��6�   $	��120��6�   ��6   �� *UpdateViewCommand+6�   5/      50      