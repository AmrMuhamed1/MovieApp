
abstract class CardStates{}

class InitialCardStete extends CardStates{}
class LoadingCardState extends CardStates{}
class SuccessCardState extends CardStates{

}
class FailureCardState extends CardStates{

  final String error;

  FailureCardState(this.error);
}
