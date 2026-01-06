using KlantenSimulatorBL.Domein;
using KlantenSimulatorBL.Interfaces;
using KlantenSimulatorDL.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace KlantenSimulatorDL.Providers
{
    public class JsonAddressProvider : IAddressProvider
    {
        private readonly Dictionary<string, JsonCountryAddressRoot> _data;
        private readonly Random _random = new();

        public JsonAddressProvider(string jsonPath)
        {
            var json = File.ReadAllText(jsonPath);

            _data = JsonSerializer.Deserialize<
                Dictionary<string, JsonCountryAddressRoot>>(json)
                ?? throw new InvalidOperationException("JSON address data could not be loaded.");
        }

        public Address GetRandomAddress(string countryCode)
        {
            if (!_data.ContainsKey(countryCode))
                throw new ArgumentException($"No address data for country {countryCode}");

            var country = _data[countryCode];

            var municipality =
                country.Municipalities[_random.Next(country.Municipalities.Count)];

            var street =
                municipality.Streets[_random.Next(municipality.Streets.Count)];

            return new Address(
                street,
                municipality.Name,
                countryCode
            );
        }
    }
}
    