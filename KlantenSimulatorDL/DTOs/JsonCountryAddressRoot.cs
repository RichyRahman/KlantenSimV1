using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KlantenSimulatorDL.DTOs
{
    public class JsonCountryAddressRoot
    {
        public List<JsonMunicipality> Municipalities { get; set; }
    }
}
