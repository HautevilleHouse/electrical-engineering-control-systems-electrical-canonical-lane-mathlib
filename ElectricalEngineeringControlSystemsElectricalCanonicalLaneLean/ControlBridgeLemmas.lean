import ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean.ControlAdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ControlWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse