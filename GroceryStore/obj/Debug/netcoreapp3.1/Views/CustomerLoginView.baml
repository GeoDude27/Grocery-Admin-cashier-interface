   M S B A M L   `   `   `  ����G  CGroceryStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GroceryStore.ViewsGroceryStore.Views  5      *    $GroceryStore.Views.CustomerLoginView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:GroceryStore.Views     5      .��5	      � 
�����p�  � ColumnDefinitions  5
   
   �� 5      $
��200* �6   6.    � RowDefinitions 5   
   �� 5      6   �� 5      6   �� 5      6   �� 5      6   .+�5   
   �� $��40(�6   $��Cashier Dashboard��6"   $��Center=�6;   $��DemiBold"�6X   $��2��6n   �� 5   
   $
��Back��6   $
��Back��6F   $��0��6^   $��16(�6k   $
��Bold"�6y   $
��Left=�6�   $	��Top=�6�   $	��100��6�   $��30��6�   $��	10,10,0,0q�6�   ��6    �� *UpdateViewCommand+6�   � 5   
   $��1��6   $��Center=�6!   $��Center=�6<   .+�5      �� $��	Username:��6   $��16(�6(   $
��Bold"�66   $��0,0,20,0q�6H   �� 5      $	��160��6U   $��Center=�6a   ��6   �� *
Username+ �� UpdateSourceTrigger$ PropertyChanged=�6a   5      � 5   
   $��2��6   $��Center=�6!   $��Center=�6<   .+�5      �� $��	Password:��6   $��16(�6(   $
��Bold"�66   $��0,0,20,0q�6H   G� 5      -   5        $��Password��5      $	��160��6+   $��Center=�67   6[   5      �� 5   
   $��Login��6   $��4��6t   $��16(�6�   $
��Bold"�6�   $��Center=�6�   $��Center=�6�   $	��150��6�   $��40��6�   $��	0,0,200,0q�6�   ��6!   �� *LoginCommand+��6B   ��  �� ElementName$ Password��6�   �� 5   
   $��Signup��6   $��4��6v   $��16(�6�   $
��Bold"�6�   $��Center=�6�   $��Center=�6�   $	��150��6�   $��40��6�   $��	200,0,0,0q�6�   ��6"   �� *SignupCommand+��6D   �� $ Password��6�   �� 5   
   $��6��6?   $��2��6P   ��6   �� *SelectedViewModel+6P   5       5!      