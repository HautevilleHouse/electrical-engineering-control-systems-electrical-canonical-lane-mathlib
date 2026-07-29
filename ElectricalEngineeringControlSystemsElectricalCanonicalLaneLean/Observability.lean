import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure ObservabilityPackage where
  observabilityMatrix : Type
  rankCondition : Prop
  unobservableSubspace : Prop
  observable : Prop

structure ObservabilityEvidence (O : ObservabilityPackage) where
  rankConditionClosed : O.rankCondition
  unobservableSubspaceClosed : O.unobservableSubspace
  observableClosed : O.observable

def ObservabilityClosed (O : ObservabilityPackage) : Prop :=
  O.rankCondition ∧ O.unobservableSubspace ∧ O.observable

theorem observability_closed_from_evidence (O : ObservabilityPackage) (E : ObservabilityEvidence O) : ObservabilityClosed O :=
  And.intro E.rankConditionClosed (And.intro E.unobservableSubspaceClosed E.observableClosed)

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse
