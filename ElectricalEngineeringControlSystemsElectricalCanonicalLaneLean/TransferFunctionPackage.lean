import ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean.ControlAdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure TransferFunctionPackage where
  numerator : Polynomial ℝ
  denominator : Polynomial ℝ
  proper : Prop
  stable : Prop
  poles : List ℂ
  zeros : List ℂ

structure TransferFunctionEvidence (G : TransferFunctionPackage) where
  properClosed : G.proper
  stableClosed : G.stable
  polesComputed : G.poles = Polynomial.roots G.denominator
  zerosComputed : G.zeros = Polynomial.roots G.numerator

def TransferFunctionClosed (G : TransferFunctionPackage) : Prop :=
  G.proper ∧ G.stable ∧ G.poles = Polynomial.roots G.denominator ∧ G.zeros = Polynomial.roots G.numerator

theorem transfer_function_closed_from_evidence (G : TransferFunctionPackage) (E : TransferFunctionEvidence G) : TransferFunctionClosed G := by
  exact And.intro E.properClosed (And.intro E.stableClosed (And.intro E.polesComputed E.zerosComputed))

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse