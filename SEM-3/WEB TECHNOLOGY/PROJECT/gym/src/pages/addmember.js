function AddMember(){
  return(
    <div class="container">
        <h1 class="text-center mb-5">Gym Membership</h1>
        <form action="/submit-signup" method="post">
            <div class="form-group m-3">
                <label class="form-label">First Name</label>
                <input type="text" class="form-control"/>
            </div>
            <div class="form-group m-3">
                <label class="form-label">Last Name</label>
                <input type="text" class="form-control"/>
            </div>
            <div class="form-group m-3">
                <label for="email">Email Address</label>
                <input type="email" class="form-control mt-2" name="email" required />
            </div>
            <div class="form-group m-3">
                <label for="phone">Phone Number</label>
                <input type="tel" class="form-control mt-2" name="phone" required />
            </div>
            <div class="form-group m-3">
                <div class="mb-2">
                    <label>Gender</label>
                </div>
                    <div class="mx-3 form-check form-text">
                        <input class="form-check-input" type="radio" name="flexRadioDefault" />
                        <label class="form-check-label" for="flexRadioDefault1">Male</label>
                    </div>
                    <div class="mx-3 form-check form-text">
                        <input class="form-check-input" type="radio" name="flexRadioDefault" />
                        <label class="form-check-label" for="flexRadioDefault1">Female</label>
                    </div>
                    <div class="mx-3 form-check form-text">
                        <input class="form-check-input" type="radio" name="flexRadioDefault" />
                        <label class="form-check-label" for="flexRadioDefault1">Other</label>
                    </div>   
            </div>
            <div class="form-group m-3">
                <label for="dob">Date of Birth</label>
                <input type="date" class="form-control mt-2" name="dob" required />
            </div>

            <div class="form-group m-3">
                <label>Membership Type</label>
                <select class="form-select mt-2" aria-label="Default select example">
                    <option value="1">Basic</option>
                    <option value="2">Premium</option>
                    <option value="3">VIP</option>
                </select>
            </div>
            <div class="row form-group m-3">
                <input type="submit" class="btn btn-primary mt-3 col-2 mx-auto" value="Add" />
                <input type="submit" class="btn btn-warning mt-3 col-2 mx-auto" value="Edit" />
            </div>
        </form>
    </div>
  );
}

export default AddMember;