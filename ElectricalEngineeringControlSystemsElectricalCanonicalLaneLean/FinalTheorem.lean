import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean.BridgeLemmas
import ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

def ConstrainedElectricalControlClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_electrical_control_endgame (A : AdmissibleClass) :
    ConstrainedElectricalControlClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse
