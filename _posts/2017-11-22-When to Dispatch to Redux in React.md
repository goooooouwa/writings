# When to Dispatch to Redux in React?

dispatch is one way bridge between React and Redux.
Dispatch in callbacks. This is often defined in `mapDispatchToProps` with react-redux.
e.g.
	const mapDispatchToProps = dispatch => {
	  return {
	onTodoClick: id => {
	  dispatch(toggleTodo(id))
	}
	  }
	}