using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Wpf5
{
    /// <summary>
    /// Логика взаимодействия для Readerw.xaml
    /// </summary>
    public partial class Readerw : Window
    {
        private string connectionString = @"Data Source=DESKTOP-D8S3V2D; Initial Catalog=wpf;Integrated Security=True";
        public Readerw()
        {
            InitializeComponent();
        }
        public bool BuyBook(int bookId, int readerId)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand("BuyBook", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@BookId", bookId);
                        command.Parameters.AddWithValue("@ReaderId", readerId);
                        command.Parameters.AddWithValue("@StartDate", DateTime.Now);

                        int rowsAffected = command.ExecuteNonQuery();
                        return rowsAffected > 0; 
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine($"Ошибка SQL: {ex.Message}");
                Console.WriteLine($"StackTrace: {ex.StackTrace}");
                return false;
            }
        }

        private void ButtonBuyBook_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                int bookId = int.Parse(bookIdTextBox.Text); 
                int readerId = int.Parse(readerIdTextBox.Text); 

                bool isSuccessful = BuyBook(bookId, readerId);

                if (isSuccessful)
                {
                    MessageBox.Show("Книга успешно куплена.");
                    
                }
                else
                {
                    MessageBox.Show("Ошибка при покупке книги.");
                }
            }
            catch (FormatException ex)
            {
                MessageBox.Show("Ошибка формата ввода. Проверьте правильность введенных данных.");
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Общая ошибка: {ex.Message}");
            }
        }
    }
}
