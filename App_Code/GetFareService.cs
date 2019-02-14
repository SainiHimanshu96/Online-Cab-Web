using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: If you change the class name "GetFareService" here, you must also update the reference to "GetFareService" in Web.config.
public class GetFareService : IGetFareService
{
    public double GetFare(double Distance, double WaitTime)
    {
        double Fare;        
        if (Distance > 1)
        {
            Fare = WaitTime + 15 + ((Distance - 1) * 13);
        }
        else
        {
            Fare = WaitTime + (Distance * 15);
        }

        return Fare;
    }
}
