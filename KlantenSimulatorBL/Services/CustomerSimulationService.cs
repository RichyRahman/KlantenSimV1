using KlantenSimulatorBL.Domein;
using KlantenSimulatorBL.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KlantenSimulatorBL.Services
{
    public class CustomerSimulationService
    {
        private readonly INameProvider _nameProvider;
        private readonly IAddressProvider _addressProvider;


        public CustomerSimulationService(INameProvider nameProvider, IAddressProvider addressProvider)
        {
            _nameProvider = nameProvider;
            _addressProvider = addressProvider;
        }

        public Customer SimulateCustomer(string countryCode)
        {
            var firstName = _nameProvider.GetRandomFirstName(countryCode);
            var lastName = _nameProvider.GetRandomLastName(countryCode);
            var address = _addressProvider.GetRandomAddress(countryCode);
            return new Customer(firstName, lastName, address);
        }
    }
}
