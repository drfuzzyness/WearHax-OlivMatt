using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityOSC;

public class WiimoteMovementController : MonoBehaviour {

	public int port = 54934;
	public Dictionary<string, ServerLog> servers;
	public OSCHandler handler;
	public Vector2 DPadState;
	public int PacketCount;

	// Use this for initialization
	void Start () {
		OSCHandler.Instance.Init();
		handler = OSCHandler.Instance;
		handler.CreateServer( "WiiMote", port );
		servers = new Dictionary<string, ServerLog>();
	}
	
	// Update is called once per frame
	void Update() {
		handler.UpdateLogs();
		servers = handler.Servers;
		string data;
		string[] halves;
		object thisData;
		foreach (KeyValuePair<string, ServerLog> item in servers) {
			if (item.Value.log.Count > 0) {
				PacketCount = item.Value.packets.Count;
				foreach( OSCPacket packet in item.Value.packets ) {
					if( packet.Address == "/wii/1/dpad" ) {
						thisData = packet.Data[ packet.Data.Count - 1 ];
						data = (string)thisData;
						halves = data.Split(',');
						DPadState.x = (int)float.Parse( halves[0].Substring( 1 ) );
						DPadState.y = (int)float.Parse( halves[1].Substring( 1, halves[1].Length - 2 ) ) * -1;
					}
				}
			}
		}



	}
}
