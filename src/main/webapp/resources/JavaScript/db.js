(function() {

    var db = {

        loadData: function(filter) {
            return $.grep(this.clients, function(client) {
                return (!filter.Name || client.Name.indexOf(filter.Name) > -1)
                    && (!filter.Age || client.Age === filter.Age)
                    && (!filter.Address || client.Address.indexOf(filter.Address) > -1)
                    && (!filter.Country || client.Country === filter.Country)
                    && (filter.Married === undefined || client.Married === filter.Married);
            });
        },

        insertItem: function(insertingClient) {
            this.clients.push(insertingClient);
        },

        updateItem: function(updatingClient) { },

        deleteItem: function(deletingClient) {
            var clientIndex = $.inArray(deletingClient, this.clients);
            this.clients.splice(clientIndex, 1);
        }

    };

    window.db = db;

    db.clients = [
        {
            "Data": "4234234",
            "PA": "4234234",
        	"Peso (kg)": "4234234",
        	"Altura (cm)": "4234234",
        	"IMC": "4234234",
        	"PCT": "4234234",
        	"PCB": "4234234",
        	"PCSE": "4234234",
        	"PCPeitoral": "4234234",
        	"PCAb": "4234234",
        	"PCSI": "4234234",
        	"PCCoxa": "4234234",
        	"PCPant": "4234234",
        	"CBraço": "4234234",
        	"CAntebraço": "4234234",
        	"CPunho": "4234234",
        	"CTórax": "4234234",
        	"CCintura": "4234234",
        	"CCoxa": "4234234",
        	"CPanturrilha": "4234234",
        	"Compleição": "4234234",
        	"EM": "4234234",
        	"%G": "4234234",
        	"%MM": "4234234",
        	"CCintura": "4234234"
        },
    ];

}());