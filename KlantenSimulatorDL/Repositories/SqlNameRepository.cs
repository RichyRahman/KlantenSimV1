using KlantenSimulatorBL.Interfaces;

namespace KlantenSimulatorDL.Repositories
{
    public class SqlNameRepository : INameProvider
    {
        public string GetRandomFirstName(string countryCode)
        {
            // Simuleer het ophalen van een willekeurige voornaam uit een SQL-database
            return countryCode switch
            {
                "US" => "John",
                "NL" => "Jan",
                "FR" => "Jean",
                _ => "Alex"
            };
        }

        public string GetRandomLastName(string countryCode)
        {
            // Simuleer het ophalen van een willekeurige achternaam uit een SQL-database
            return countryCode switch
            {
                "US" => "Smith",
                "NL" => "Jansen",
                "FR" => "Dubois",
                _ => "Doe"
            };
        }
    }
}
