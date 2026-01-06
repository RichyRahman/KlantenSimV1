using KlantenSimulatorBL.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KlantenSimulatorDL
{
    public class JsonNameProvider : INameProvider
    {
        public string GetRandomFirstName(string countryCode)
        {
            // Simuleer het ophalen van een willekeurige voornaam uit een JSON-bestand
            return countryCode switch
            {
                "US" => "Michael",
                "NL" => "Pieter",
                "FR" => "Pierre",
                _ => "Sam"
            };
        }

        public string GetRandomLastName(string countryCode)
        {
            // Simuleer het ophalen van een willekeurige achternaam uit een JSON-bestand
            return countryCode switch
            {
                "US" => "Johnson",
                "NL" => "de Vries",
                "FR" => "Lefevre",
                _ => "Brown"
            };
        }
    }
}
