package inet.showcases.visualizer.info;

import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;
import inet.node.inet.AdhocHost;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.integrated.IntegratedVisualizer;

network SubmoduleInformationVisualizationShowcase
{
    submodules:
        visualizer: IntegratedVisualizer {
            parameters:
                @display("p=100,100");
        }
        configurator: IPv4NetworkConfigurator {
            parameters:
                @display("p=100,200");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            parameters:
                @display("p=100,300");
        }
        source: AdhocHost {
            parameters:
                @display("p=300,200");
        }
        destination: AdhocHost {
            parameters:
                @display("p=600,200");
        }
        relay: AdhocHost {
            @display("p=447,143");
        }
}
