using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using KlantenSimulatorDL.DTOs;

namespace KlantenSimulatorBL.Interfaces
{
    public class JsonNameProvider : INameProvider
    {
        private readonly Dictionary<string, JsonCountryNamesDTO> _data;
        public string GetRandomFirstName(string countryCode)
        {
            throw new NotImplementedException();
        }

        public string GetRandomLastName(string countryCode)
        {
            throw new NotImplementedException();
        }
    }
}
