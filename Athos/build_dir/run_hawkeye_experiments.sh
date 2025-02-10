
# nohup ./shufflemodel_SCI_OT.out r=1 port=12342 < ../model_input_weights_fixedpt_scale_23.inp > log_shuffle_server.txt &

# ./shufflemodel_SCI_OT.out r=2 port=12342 < ../model_input_weights_fixedpt_scale_23.inp > log_shuffle_client.txt

# sleep 60s

# nohup ./mobilemodel_SCI_OT.out r=1 port=12342 < ../model_input_weights_fixedpt_scale_23.inp > log_mobile_server.txt &

# ./mobilemodel_SCI_OT.out r=2 port=12342 < ../model_input_weights_fixedpt_scale_23.inp > log_mobile_client.txt

# sleep 60s

# nohup ./resmodel_SCI_OT.out r=1 port=12342 < ../model_input_weights_fixedpt_scale_23.inp > log_resnet_server.txt &

# ./resmodel_SCI_OT.out r=2 port=12342 < ../model_input_weights_fixedpt_scale_23.inp > log_resnet_client.txt

# sleep 60s

nohup ./densemodel_SCI_OT.out r=1 port=12342 < ../model_input_weights_fixedpt_scale_23.inp > log_densenet_server.txt &

./densemodel_SCI_OT.out r=2 port=12342 < ../model_input_weights_fixedpt_scale_23.inp > log_densenet_client.txt
