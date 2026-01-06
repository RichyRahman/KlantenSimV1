using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KlantenSimulatorBL.Interfaces
{
    public class DummyNameProvider : INameProvider
    {
        public string GetRandomFirstName(string countryCode)
        {
            return "DummyFirstName";
        }
        public string GetRandomLastName(string countryCode)
        {
            return "DummyLastName";
        }

    }
}
