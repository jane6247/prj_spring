
public class ExRemoteControl {
    public static void main(String[] args) {
        Television tv = new Television();

        tv.turnOn();
        tv.setMute(true);
        tv.setMute(false);
        tv.setVolume(100);
        RemoteControl.changeBattery();
          tv.turnOff();
    }
}
