using System.Net.Sockets;

namespace KlantenSimulatorBL.Domein
{
    public class Customer
    {
        public string FirstName { get; }
        public string LastName { get; }
        public Address Address { get; }


        public Customer(string firstName, string lastName, Address address)
        {
            FirstName = firstName;
            LastName = lastName;
            Address = address;
        }

        public override string ToString()
        {
                return $"{FirstName} {LastName}, {Address}";
        }
    }
}
