function approach(_current_value,_target_value,_change_amount){
	if _current_value < _target_value
	{
		_current_value += _change_amount;
		_current_value = min(_current_value, _target_value);//we don't want our current value to be past our target value
	
	}else 
	{
		_current_value -= _change_amount;
		_current_value = max(_current_value,_target_value);//once we get to it we're going to do the maximum value
	}
	
	return _current_value;
}