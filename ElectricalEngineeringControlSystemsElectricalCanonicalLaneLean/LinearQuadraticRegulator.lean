import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure LinearQuadraticRegulatorPackage (S : StateSpaceRepresentationPackage) where
  costStateWeight : Mat (S.stateDim, S.stateDim) ℝ
  costInputWeight : Mat (S.inputDim, S.inputDim) ℝ
  riccatiEquationSolved : Prop
  optimalControlExist : Prop
  costFunctionalMinimized : Prop
  solutionUniqueness : Prop

structure LinearQuadraticRegulatorEvidence {S : StateSpaceRepresentationPackage}
    (L : LinearQuadraticRegulatorPackage S) where
  riccatiEquationSolvedClosed : L.riccatiEquationSolved
  optimalControlExistClosed : L.optimalControlExist
  costFunctionalMinimizedClosed : L.costFunctionalMinimized
  solutionUniquenessClosed : L.solutionUniqueness

def LinearQuadraticRegulatorClosed {S : StateSpaceRepresentationPackage}
    (L : LinearQuadraticRegulatorPackage S) : Prop :=
  L.riccatiEquationSolved ∧ L.optimalControlExist ∧ L.costFunctionalMinimized ∧ L.solutionUniqueness

theorem linear_quadratic_regulator_closed_from_evidence
    {S : StateSpaceRepresentationPackage} (L : LinearQuadraticRegulatorPackage S)
    (E : LinearQuadraticRegulatorEvidence L) : LinearQuadraticRegulatorClosed L := by
  exact And.intro E.riccatiEquationSolvedClosed (And.intro E.optimalControlExistClosed
    (And.intro E.costFunctionalMinimizedClosed E.solutionUniquenessClosed))

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse