import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean.StateSpaceModel

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure ControllabilityObservabilityPackage {S : StateSpacePackage} where
  controllabilityMatrix : Matrix (Fin S.stateDimension) (Fin (S.stateDimension * S.inputDimension)) ℝ
  controllabilityRankFull : Prop
  observabilityMatrix : Matrix (Fin (S.stateDimension * S.outputDimension)) (Fin S.stateDimension) ℝ
  observabilityRankFull : Prop

structure ControllabilityObservabilityEvidence {S : StateSpacePackage} (C : ControllabilityObservabilityPackage S) where
  controllabilityRankFullClosed : C.controllabilityRankFull
  observabilityRankFullClosed : C.observabilityRankFull

def ControllabilityObservabilityClosed {S : StateSpacePackage} (C : ControllabilityObservabilityPackage S) : Prop :=
  C.controllabilityRankFull ∧ C.observabilityRankFull

theorem controllability_observability_closed_from_evidence {S : StateSpacePackage} (C : ControllabilityObservabilityPackage S) (E : ControllabilityObservabilityEvidence C) :
    ControllabilityObservabilityClosed C := by
  exact And.intro E.controllabilityRankFullClosed E.observabilityRankFullClosed

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse