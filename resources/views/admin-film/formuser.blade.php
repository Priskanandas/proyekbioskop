<div class="form-group">
	<label for="name">Nama</label>
	<input type="text" class="form-control" name="name" id="name"
	       value="{{ old('name', isset($member) ? $member->name : '') }}">
</div>

<div class="form-group">
	<label for="email">Email</label>
	<input type="text" class="form-control" id="email" name="email"
	       value="{{ old('email', isset($member) ? $member->email : '') }}">
</div>

<div class="form-group">
	<label for="password">Password</label>
	<input type="text" class="form-control" name="password" id="password"
	       value="{{ old('password') }}">
</div>

<div class="form-group">
	<label for="alamat">Alamat</label>
	<textarea class="form-control" name="alamat" id="alamat"
	          rows="3" style="max-height:100px;min-height:100px; resize: none">{{ old('alamat', isset($member) ? $member->alamat : '') }}</textarea>
</div>

<div class="form-group">
	<label for="telepon">Telepon</label>
	<input type="text" class="form-control" name="telepon" id="telepon"
	       value="{{ old('telepon', isset($member) ? $member->telepon : '') }}">
</div>

<div class="form-group">
	<label for="image">Image</label>
	<input type="file" class="form-control" name="image" id="image">
</div>

@if (isset($member) && $member->image)
	<div class="form-group">
		<label>Gambar Saat Ini:</label><br>
		<img src="{{ asset('upload/profile/' . $member->image) }}" style="max-width: 100px;">
	</div>
@endif
