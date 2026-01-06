using KlantenSimulatorBL.Domein;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KlantenSimulatorBL.Interfaces
{
    public class DummyAddressProvider : IAddressProvider
    {
        public Address GetRandomAddress(string countryCode)
        {
            return new Address("DummyStreet 1", "DummyGemeente", countryCode);
        }
    }
}
