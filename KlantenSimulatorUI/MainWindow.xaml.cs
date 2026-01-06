using KlantenSimulatorBL.Interfaces;
using KlantenSimulatorBL.Services;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace KlantenSimulatorUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private CustomerSimulationService _simulator;
        public MainWindow()
        {
            InitializeComponent();
            InitializeUi();
            InitializeSimulator();
        }
        private void InitializeUi()
        {
            CountryComboBox.Items.Add("BE");
            CountryComboBox.Items.Add("CH");
            CountryComboBox.Items.Add("ES");
            CountryComboBox.Items.Add("SE");
            CountryComboBox.Items.Add("FI");
            CountryComboBox.Items.Add("DK");
            CountryComboBox.Items.Add("PL");
            CountryComboBox.Items.Add("CZ");

            CountryComboBox.SelectedIndex = 0;
        }

        private void InitializeSimulator()
        {
            string conn = "Server=.;Database=Klantensimulator;Trusted_Connection=True;";
            string jsonPath = "Data/names.json";

            var country = CountryComboBox.SelectedItem.ToString();

            var nameProvider = new DummyNameProvider();
            var addressProvider = new DummyAddressProvider();

            _simulator = new CustomerSimulationService(
                nameProvider,
                addressProvider);

            
            /*
            var nameProvider = ProviderFactory.CreateNameProvider(countryCode, connectionString,"Data/names.json");

            var addressProvider = ProviderFactory.CreateAddressProvider(
                countryCode,
                connectionString,
                "Data/addresses.json");

            _simulator = new CustomerSimulationService(
                nameProvider,
                addressProvider);
            */
        }

        private void GenerateCustomer_Click(object sender, RoutedEventArgs e)
        {
            var countryCode = CountryComboBox.SelectedItem.ToString();

            var customer = _simulator.SimulateCustomer(countryCode);

            ResultTextBox.Text = customer.ToString();
        }
    }
}