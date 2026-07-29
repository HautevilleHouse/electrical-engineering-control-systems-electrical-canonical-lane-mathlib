import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure StateSpaceRepresentationPackage where
  stateDim : Nat
  inputDim : Nat
  outputDim : Nat
  A : Mat (stateDim, stateDim) ℝ
  B : Mat (stateDim, inputDim) ℝ
  C : Mat (outputDim, stateDim) ℝ
  D : Mat (outputDim, inputDim) ℝ
  controllable : Prop
  observable : Prop
  minimalRealization : Prop

structure StateSpaceRepresentationEvidence (S : StateSpaceRepresentationPackage) where
  controllableClosed : S.controllable
  observableClosed : S.observable
  minimalRealizationClosed : S.minimalRealization

def StateSpaceRepresentationClosed (S : StateSpaceRepresentationPackage) : Prop :=
  S.controllable ∧ S.observable ∧ S.minimalRealization

theorem state_space_representation_closed_from_evidence
    (S : StateSpaceRepresentationPackage) (E : StateSpaceRepresentationEvidence S) :
    StateSpaceRepresentationClosed S := by
  exact And.intro E.controllableClosed (And.intro E.observableClosed E.minimalRealizationClosed)

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse