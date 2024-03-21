# CUDA_VISIBLE_DEVICES="0,1,2,3,4,5,6"
cd buffer
nohup python buffer_CL.py \
--dataset=CIFAR10 \
--model=ConvNet \
--train_epochs=100 \
--num_experts=100 \
--zca \
--buffer_path="../buffer_storage/uncertainty_sorted/" \
--data_path="../dataset/" \
--bins_path="../bins/" \
--sort_method="CIFAR10_Uncertainty" \
--rho_max=0.01 \
--rho_min=0.01 \
--alpha=0.3 \
--lr_teacher=0.01 \
--mom=0. \
--batch_train=256 \
> ../logs/train_teacher_trajectories_cl_v4_uncertainty.log 2>&1 &