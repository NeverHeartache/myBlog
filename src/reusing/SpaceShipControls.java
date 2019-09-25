//代理
package reusing;

public class SpaceShipControls {
	void up(int velocity) {}
	void down(int velocity) {}
	void left(int velocity) {}
	void right(int velocity) {}
	void forward(int velocity) {
		System.out.println("forward"+velocity);
	}
	void back(int velocity) {}
	void turboBoost() {}
}
