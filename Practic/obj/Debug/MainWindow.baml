   M S B A M L   `   `   `  ����B  >Practic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:PracticPractic  5   	       Practic.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Practic     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6   $��
Processor:��6-   $��10q�6B   �� 5   
   -   5         ��Name$ ProcessorTextBox��5      $��0��6,   $��1��69   $��10q�6I    �� 
IsReadOnly . 6U   �� 5   
   $��1��6   $��0��6   $
��RAM:��6-   $��10q�6<   �� 5   
   -   5        $ 
RamTextBox��5      $��1��6&   $��1��63   $��10q�6C    . 6O   �� 5   
   $��2��6   $��0��6   $��Video Card:��6-   $��10q�6C   �� 5   
   -   5        $ VideoCardTextBox��5      $��2��6,   $��1��69   $��10q�6I    . 6U   �� 5   
   $��3��6   $��0��6   $��Computer Name:��6-   $��10q�6F   �� 5    
   -   5        $ ComputerNameTextBox��5       $��3��6/   $��1��6<   $��10q�6L    . 6X   �� 5"   
   -   5        $��4��5"      $��2��6   $��Get Computer Info��62   $��10q�6N   6Z   5#      5$      