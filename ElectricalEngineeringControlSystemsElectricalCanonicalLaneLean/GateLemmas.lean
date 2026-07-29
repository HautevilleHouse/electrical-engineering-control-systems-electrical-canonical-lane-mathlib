import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse