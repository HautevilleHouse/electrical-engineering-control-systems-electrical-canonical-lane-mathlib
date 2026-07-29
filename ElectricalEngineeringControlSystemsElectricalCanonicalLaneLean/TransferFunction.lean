import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean

structure TransferFunctionPackage where
  sDomain : Type
  numerator : Type
  denominator : Type
  proper : Prop
  rationalFunction : Prop
  poles : Prop
  zeros : Prop

structure TransferFunctionEvidence (T : TransferFunctionPackage) where
  properClosed : T.proper
  rationalFunctionClosed : T.rationalFunction
  polesClosed : T.poles
  zerosClosed : T.zeros

def TransferFunctionClosed (T : TransferFunctionPackage) : Prop :=
  T.proper ∧ T.rationalFunction ∧ T.poles ∧ T.zeros

theorem transfer_function_closed_from_evidence (T : TransferFunctionPackage) (E : TransferFunctionEvidence T) : TransferFunctionClosed T :=
  And.intro E.properClosed (And.intro E.rationalFunctionClosed (And.intro E.polesClosed E.zerosClosed))

end ElectricalEngineeringControlSystemsElectricalCanonicalLaneLean
end HautevilleHouse
