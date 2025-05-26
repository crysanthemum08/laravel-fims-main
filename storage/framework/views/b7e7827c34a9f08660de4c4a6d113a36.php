<?php $__env->startSection('content'); ?>

    <div class="container mt-4">
        <div
            style="text-align: left; margin-bottom: 50px;  margin-top: 40px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 400; ">
            <h2>Media</h2>
        </div>
        <div class="panel panel-default" style="max-width: 1500px; margin: 0 auto; overflow-y: auto;">
            <div class="panel-heading clearfix" style="padding: 20px;">
                <strong>
                    <span class="glyphicon glyphicon-camera"></span>
                    <span>All Photos</span>
                </strong>
                <div class="pull-right">
                    <form class="form-inline" action="<?php echo e(route('media.store')); ?>" method="POST"
                        enctype="multipart/form-data" style="display: flex; align-items: center; gap: 10px;">
                        <?php echo csrf_field(); ?>

                        <label for="file_upload" class="btn btn-primary btn-sm pull-right"
                            style="position: relative; overflow: hidden; cursor: pointer; margin-bottom: 0;">
                            <span class="glyphicon glyphicon-picture"></span> Choose Product Photo
                            <input type="file" name="file_upload" id="file_upload" multiple
                                style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; opacity: 0; cursor: pointer;"
                                onchange="updateFileLabel(this)" required>
                        </label>

                        <span id="file-name-display" style="font-style: italic; font-size: 14px;"></span>

                        <!-- Upload button hidden initially -->
                        <button type="submit" id="upload-btn" class="btn btn-primary" style="display: none;">
                            <span class="glyphicon glyphicon-upload"></span> Upload
                        </button>
                    </form>
                </div>

                <script>
                    function updateFileLabel(input) {
                        const label = document.getElementById('file-name-display');
                        const uploadBtn = document.getElementById('upload-btn');

                        if (input.files.length === 1) {
                            label.textContent = input.files[0].name;
                            uploadBtn.style.display = 'inline-block'; // show button
                        } else if (input.files.length > 1) {
                            label.textContent = `${input.files.length} files selected`;
                            uploadBtn.style.display = 'inline-block'; // show button
                        } else {
                            label.textContent = '';
                            uploadBtn.style.display = 'none'; // hide button if no files
                        }
                    }
                </script>



            </div>

            <div class="panel-body" style="padding: 30px;">
                <?php if(session('msg')): ?>
                    <div class="alert alert-success"><?php echo e(session('msg')); ?></div>
                <?php endif; ?>

                <div class="table-responsive" style="max-height: 550px; overflow-y: auto; ">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th class="text-center" style="width: 50px;">#</th>
                                <th class="text-center" style="width: 20%;">Photo</th>
                                <th class="text-center" style="width: 30%;">Photo Name</th>
                                <th class="text-center" style="width: 30%;">Photo Type</th>
                                <th class="text-center" style="width: 70px;">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__empty_1 = true; $__currentLoopData = $media_files; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $media_file): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                <tr>
                                    <td class="text-center"><?php echo e($loop->iteration); ?></td>
                                    <td class="text-center">
                                        <img src="<?php echo e(asset('lib/products/' . $media_file->file_name)); ?>"
                                            style="height: 80px; width: auto;">
                                    </td>
                                    <td class="text-center text-truncate"><?php echo e($media_file->file_name); ?></td>
                                    <td class="text-center"><?php echo e($media_file->file_type); ?></td>
                                    <td class="text-center">
                                        <form action="<?php echo e(route('media.destroy', $media_file->id)); ?>" method="POST"
                                            style="display:inline;">
                                            <?php echo csrf_field(); ?>
                                            <?php echo method_field('DELETE'); ?>
                                            <button type="submit" class="btn btn-danger btn-xs" title="Delete">
                                                <span class="glyphicon glyphicon-trash"></span>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                <tr>
                                    <td colspan="5" class="text-center text-muted">No media files available.</td>
                                </tr>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH D:\xampp\htdocs\laravel-fims-main\resources\views/media/index.blade.php ENDPATH**/ ?>