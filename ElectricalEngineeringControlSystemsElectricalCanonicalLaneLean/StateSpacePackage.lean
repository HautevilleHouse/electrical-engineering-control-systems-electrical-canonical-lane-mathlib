import ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean.TransferFunctionPackage

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure StateSpacePackage where
  stateDim : ℕ
  inputDim : ℕ
  outputDim : ℕ
  A : Matrix (Fin stateDim) (Fin stateDim) ℝ
  B : Matrix (Fin stateDim) (Fin inputDim) ℝ
  C : Matrix (Fin outputDim) (Fin stateDim) ℝ
  D : Matrix (Fin outputDim) (Fin inputDim) ℝ
  controllable : Prop
  observable : Prop

structure StateSpaceEvidence (S : StateSpacePackage) where
  controllableClosed : S.controllable
  observableClosed : S.observable
  rankCondition : S.controllable → rank (S.B) = S.inputDim

def StateSpaceClosed (S : StateSpacePackage) : Prop :=
  S.controllable ∧ S.observable

theorem state_space_closed_from_evidence (S : StateSpacePackage) (E : StateSpaceEvidence S) : StateSpaceClosed S := by
  exact And.intro E.controllableClosed E.observableClosed

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse