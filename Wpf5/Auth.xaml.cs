using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
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
    /// Логика взаимодействия для Auth.xaml
    /// </summary>
    public partial class Auth : Window
    {
        string connectionString = @"Data Source=DESKTOP-D8S3V2D; Initial Catalog=wpf;Integrated Security=True";
        
        public Auth()
        {
            InitializeComponent();
        }
        private bool AuthorizeReader(string readerFio, string readerPhone)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("AuthorizeReader", connection))
                {
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@ReaderName", readerFio);
                    command.Parameters.AddWithValue("@ReaderPhone", readerPhone);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        return reader.HasRows && reader.Read();
                    }
                }
            }
        }


        private bool AuthorizeAuthor(string authorFio, string authorBdate)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("AuthorizeAuthor1", connection))
                {
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@AuthorFio", authorFio);
                    command.Parameters.AddWithValue("@AuthorBdate", authorBdate);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        return reader.HasRows && reader.Read();
                    }
                }
            }
        }



        private void Button_Click(object sender, RoutedEventArgs e)
        {

            string authorfio = authorFio.Text;
            string authorbdate = authorBdate.Text; // предполагается, что вы получаете дату рождения из соответствующего поля ввода

            bool isAuthenticated = AuthorizeAuthor(authorfio, authorbdate);

            if (isAuthenticated)
            {
                MessageBox.Show("Авторизация автора успешна.");
                Authorw p = new Authorw();
                p.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("Ошибка авторизации автора.");
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            string readerfio = readerFio.Text;
            string readerphone = readerPhone.Text;

            bool isAuthenticated = AuthorizeReader(readerfio, readerphone);

            if (isAuthenticated)
            {
                MessageBox.Show("Авторизация читателя успешна.");
                Readerw p = new Readerw();
                p.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("Ошибка авторизации читателя.");
            }
        }
    }
}
