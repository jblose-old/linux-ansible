dep: 
	ansible-galaxy install geerlingguy.docker

test: dep
	ansible-playbook -i inventory.yml -K site.yml --check --diff

apply: dep
	ansible-playbook -i inventory.yml -K site.yml