import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure StateSpacePackage where
  stateDimension : Nat
  inputDimension : Nat
  outputDimension : Nat
  dynamicsMatrix : Type
  inputMatrix : Type
  outputMatrix : Type
  feedthroughMatrix : Type
  stateEquation : Prop
  outputEquation : Prop
  wellDefined : Prop

structure StateSpaceEvidence (S : StateSpacePackage) where
  stateEquationClosed : S.stateEquation
  outputEquationClosed : S.outputEquation
  wellDefinedClosed : S.wellDefined

def StateSpaceClosed (S : StateSpacePackage) : Prop :=
  S.stateEquation ∧ S.outputEquation ∧ S.wellDefined

theorem state_space_closed_from_evidence (S : StateSpacePackage) (E : StateSpaceEvidence S) : StateSpaceClosed S :=
  And.intro E.stateEquationClosed (And.intro E.outputEquationClosed E.wellDefinedClosed)

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse
