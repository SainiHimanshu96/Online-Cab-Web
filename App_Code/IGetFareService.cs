using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: If you change the interface name "IGetFareService" here, you must also update the reference to "IGetFareService" in Web.config.
[ServiceContract]
public interface IGetFareService
{
    [OperationContract]
    double GetFare(double Distance, double WaitTime);
}
