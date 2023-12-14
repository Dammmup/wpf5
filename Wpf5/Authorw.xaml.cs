using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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
    /// Логика взаимодействия для Authorw.xaml
    /// </summary>
    public partial class Authorw : Window
    {
        private string connectionString = @"Data Source=DESKTOP-D8S3V2D; Initial Catalog=wpf;Integrated Security=True";

        public Authorw()
        {
            InitializeComponent();
        }

        public bool AddNewBook(string bookName, int authorID, DateTime publicationYear)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("AddBook", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@BookName", bookName);
                    command.Parameters.AddWithValue("@AuthorID", authorID);
                    command.Parameters.AddWithValue("@PublicationYear", publicationYear);

                    int rowsAffected = command.ExecuteNonQuery();
                    return rowsAffected > 0; // Возвращает true, если операция выполнена успешно
                }
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            try
            {
                string bookname = bookName.Text;
                int authorID = int.Parse(bookId.Text); // Предположим, что вводится число
                DateTime publicationYear = DateTime.Parse(dateb.Text); // Предположим, что вводится дата

                bool isSuccessful = AddNewBook(bookname, authorID, publicationYear);

                if (isSuccessful)
                {
                    MessageBox.Show("Новая книга успешно добавлена.");
                    // Ваши дополнительные действия после успешного добавления книги
                }
                else
                {
                    MessageBox.Show("Ошибка при добавлении новой книги.");
                }
            }
            catch (FormatException ex)
            {
                MessageBox.Show("Ошибка формата ввода. Проверьте правильность введенных данных.");
            }
            catch (SqlException ex)
            {
                MessageBox.Show($"Ошибка SQL: {ex.Message}");
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Общая ошибка: {ex.Message}");
            }
        }

    }
}


