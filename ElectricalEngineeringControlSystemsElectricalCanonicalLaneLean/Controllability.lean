import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure ControllabilityPackage where
  controllabilityMatrix : Type
  rankCondition : Prop
  reachableSubspace : Prop
  controllable : Prop

structure ControllabilityEvidence (C : ControllabilityPackage) where
  rankConditionClosed : C.rankCondition
  reachableSubspaceClosed : C.reachableSubspace
  controllableClosed : C.controllable

def ControllabilityClosed (C : ControllabilityPackage) : Prop :=
  C.rankCondition ∧ C.reachableSubspace ∧ C.controllable

theorem controllability_closed_from_evidence (C : ControllabilityPackage) (E : ControllabilityEvidence C) : ControllabilityClosed C :=
  And.intro E.rankConditionClosed (And.intro E.reachableSubspaceClosed E.controllableClosed)

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse
