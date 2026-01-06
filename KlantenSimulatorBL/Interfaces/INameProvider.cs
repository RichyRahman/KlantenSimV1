namespace KlantenSimulatorBL.Interfaces
{
    public interface INameProvider
    {
        string GetRandomFirstName(string countryCode);
        string GetRandomLastName(string countryCode);
    }
}