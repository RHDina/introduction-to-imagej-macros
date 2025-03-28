// Example - Good coding practice

s = 100 // size
_ = newArray(50, 50, 0.75, 0.5, 100, 5, 0x00, 0xffff00, 0xffffff, 0xff0000, 71, 97, 109, 101, 32, 111, 118, 101, 114);
newImage("P0N9", "RGB Black", s, s, 1);
while(true){
	getCursorLoc(x, y, z, f);
	for(i = 0; i < 2; i++){
		_[i] += _[i+2];
		if(_[i] < 0 || _[i] > s){
			_[i+2]=-_[i+2];
			}
	}
	setColor(_[6]);
	fillRect(0, 0, s, s);
	setColor(_[7]);
	fillRect(_[0], _[1], _[5], _[5]);
	setColor(_[8]);
	fillRect(0, _[1] - 2 * _[5], _[5], 4 * _[5]);
	setColor(_[8]);
	fillRect(s - _[5], y - 2 * _[5], _[5], 4 * _[5]);
	if ((_[0] > s - _[5] && abs(_[1] - y) > 4 * _[5]) && x > 0){
		setColor(_[9]);
		for(x = 10; x < 19; x++){
			drawString(fromCharCode(_[x]),15+8*(x-10),30);
			}
		break;
		}
		wait(10);			
}
