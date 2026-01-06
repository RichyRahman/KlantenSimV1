using KlantenSimulatorBL.Domein;

namespace KlantenSimulatorBL.Interfaces
{
    public interface IAddressProvider
    {
        Address GetRandomAddress(string countryCode);
    }
}