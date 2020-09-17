
test: test-template.yml text.conf.j2
	ansible-playbook -i /etc/ansible/ec2.py --limit "tag_Name_AWS_Name_of_Instance" \
		test-template.yml -e 'ansible_python_interpreter=/usr/bin/python3' ; ssh 10.0.0.4 'cat /tmp/text.conf'
