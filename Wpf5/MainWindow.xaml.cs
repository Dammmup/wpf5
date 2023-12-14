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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Wpf5
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
           
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string _fio = fio.Text;
            string _bdate = bdate.Text;
            string connectionString = @"Data Source=DESKTOP-D8S3V2D; Initial Catalog=wpf;Integrated Security=True";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (var command = connection.CreateCommand())
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.CommandText = "pAddAuthor";

                        command.Parameters.AddWithValue("@fio", _fio);
                        command.Parameters.AddWithValue("@bdate", _bdate);

                        command.ExecuteNonQuery();
                    }
                    MessageBox.Show("Congratulations!");
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Ups.. smthng wrong...");

            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            string _fio = fio1.Text;
            string _bdate = bdate1.Text;
            string _phone = phone.Text;
            string _adress = adress.Text;

            string connectionString = @"Data Source=DESKTOP-D8S3V2D; Initial Catalog=wpf;Integrated Security=True";
            int result = 0;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (var command = connection.CreateCommand())
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "pAddReader";
                    command.Parameters.AddWithValue("@fio", _fio);
                    command.Parameters.AddWithValue("@bdate", _bdate);
                    command.Parameters.AddWithValue("@phone", _phone);
                    command.Parameters.AddWithValue("@adress", _adress);

                    command.Parameters.Add("@result", SqlDbType.Int);
                    command.Parameters["@result"].Direction = ParameterDirection.Output;

                    command.ExecuteNonQuery();

                    result = Convert.ToInt32(command.Parameters["@result"].Value);
                }
            }
            if(result == 0)
            {
                MessageBox.Show("ERROR");
            }
            else if(result == 1)
            {
                MessageBox.Show("Congratulations");
            }
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Auth p = new Auth();
            p.Show();
            this.Close();
        }
    }
}
