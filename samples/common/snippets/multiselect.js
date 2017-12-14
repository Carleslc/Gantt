gantt.form_blocks["multiselect"] = {
	render: function(section) {
		var rendText = "<div class='multiselect'><select class='lb_mult_input' multiple>";
		for(var i=0;i<section.options.length;i++) {
			rendText += "<option value='" + section.options[i].key + "'>" + section.options[i].label + "</option>";
		}
		rendText += "</select>";
		return rendText + "</div>";
	},
	set_value: function(node, value, task, section) {
		var select = node.querySelector(".lb_mult_input");
		for(var i=0;i<select.childNodes.length;i++) {
			select.childNodes[i].selected = false;
			for(var j=0;j<value.length;j++) {
				if(select.childNodes[i].value == value[j]) {
					select.childNodes[i].selected = true;
				}
			}
		}
	},
	get_value: function(node, task, section) {
		var result = [],
			child = node.querySelectorAll(".lb_mult_input option");
		for(var i=0;i<child.length;i++) {
			if(child[i].selected) {
				result.push(child[i].value);
			}
		}
		return result;
	},
	focus: function() {
		return false;
	}
};