
abstract class SearchStates{}

class InitialSearchStete extends SearchStates{}
class LoadingSearchState extends SearchStates{}
class SuccessSearchState extends SearchStates{

}
class FailureSearchState extends SearchStates{

  final String error;

  FailureSearchState(this.error);
}
