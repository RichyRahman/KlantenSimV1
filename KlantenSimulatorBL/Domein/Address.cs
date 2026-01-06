namespace KlantenSimulatorBL.Domein
{
    public class Address
    {
        public string Street { get; }
        public string Municipality { get; }
        public string Country { get; }
        public Address(string street, string municipality, string country)
        {
            Street = street;
            Municipality = municipality;
            Country = country;
        }

        public override string ToString()
        {
            return $"{Street}, {Municipality}, {Country}";
        }
    }
}