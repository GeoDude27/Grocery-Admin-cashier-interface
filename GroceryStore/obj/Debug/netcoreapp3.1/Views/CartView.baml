   M S B A M L   `   `   `  ����G  CGroceryStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GroceryStore.ViewsGroceryStore.Views  5      !    GroceryStore.Views.CartView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:GroceryStore.Views     5      .��5	      � 
�����p�  � ColumnDefinitions  5
   
   �� 5      �� 5      6!    � RowDefinitions 5   
   �� 5      $	��40* �6   6+   �� 5      $	��54* �6   6+   �� 5      $	��40* �6   6+   �� 5      $
��281* �6   6,   .+�5   
   �� $
��Shop��6   $
��Left=�6    $��20,0,0,0q�6;   $��30(�6M   $��DemiBold"�6[   $��Center=�6q   �� 5   
   $��Logout��67   $��Logout��6Q   $��16(�6b   $��0��6p   $��1��6}   $��Right=�6�   $��Center=�6�   $��30��6�   $	��100��6�   $��0,0,30,0q�6�   ��6   �� *UpdateViewCommand+6�   �� 5   
   $��Checkout��6.   $��16(�6A   $��1��6O   $��1��6\   $��Right=�6l   $��Center=�6�   $��30��6�   $	��100��6�   $��0,0,30,0q�6�   ��6   �� *
Checkout+6�   �� 5   
   $	��QR:��6   $��16(�6   $��0��6,   $��1��6<   $
��Left=�6I   $��10,0,0,0q�6d   $��Center=�6v   $
��Bold"�6�   �� 5   
   $��0��6K   $��1��6[   $
��Left=�6h   $��Center=�6�   $��50,0,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $��70��6�   $��30��6�   $
��Left=�6�   $��Center=�6�   ��6   �� *ID+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5   
   $��	Quantity:��6   $��16(�6$   $��0��62   $��1��6B   $
��Left=�6O   $��	130,0,0,0q�6j   $��Center=�6}   $
��Bold"�6�   �� 5   
   $��0��6Q   $��1��6a   $
��Left=�6n   $��Center=�6�   $��	210,0,0,0q�6�   $
 Wrap=�6�   $��70��6�   $��30��6�   $
��Left=�6�   $��Center=�6  ��6   �� *
Quantity+$ PropertyChanged=�6  �� 5   
   $��Add to Cart��60   $��16(�6F   $��0��6T   $��1��6d   $��Right=�6q   $��Center=�6�   $��30��6�   $	��100��6�   ��6   �� *
AddCommand+6�   �� 5   
   $��Available Products��6   $��20(�6.   $��Center=�6<   $��Center=�6Y   $��DemiBold"�6t   $��2��6�   6�   �� 5   
   $��	Your Cart��6   $��20(�6%   $��Center=�63   $��Center=�6P   $��2��6k   $��1��6x   $��DemiBold"�6�   6�   &   System.Windows.Controls.DataGrid  5   
      CanUserAddRows$ False��64      CanUserDeleteRows$ False��6K      ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ 97 6e      HeadersVisibility$ Column=�6v   $��3��6�   ��6   �� *
products+6�     5   
   $ False��6]   $ False��6t   $ 97 6�   $ Column=�6�   $��1��6�   $��3��6�   ��6   �� *cartProducts+$ PropertyChanged=�6�   �� 5    
   $��4��6   $��2��6*   ��6>   �� *SelectedViewModel+6f   5!      5"      