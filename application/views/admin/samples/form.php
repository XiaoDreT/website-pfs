<section>
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4>
                    <span>Text fields</span>
                </h4>
            </div>
            <div class="panel-body">
                <form class="form-horizontal" action="#" role="form">
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="normalInput">Normal field</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="focus">Focused input</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" value="this is focused..." autofocus="autofocus">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="password">Password input</label>
                        <div class="col-lg-9">
                            <input type="password" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="placeholder">With placeholder</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" placeholder="This is placeholder text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="readonly">Read only input</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" readonly="readonly" value="Some value here">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="disabledInput">Disabled input</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" placeholder="Disabled input here..." disabled="disabled">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="maxlenght">Max lenght</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" placeholder="Max lenght 20 characters" maxlength="20">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="maxlenght"> Label hint <span class="help-block">Some work has to be done</span>
                        </label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>                    
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="fileinput">File input</label>
                        <div class="col-lg-9 uploader">
                            <input type="file" class="form-control" name="fileinput" id="file">
                            <span style="-moz-user-select: none;" class="filename">No file selected</span>
                            <span style="-moz-user-select: none;" class="action">Choose File</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="textareas">Normal Textarea</label>
                        <div class="col-lg-9">
                            <textarea id="textarea" rows="3" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-3 col-lg-9">
                            <button type="submit" class="btn btn-info">Save changes</button>
                            <button type="button" class="btn btn-default">Cancel</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4><span>Radio and Checkboxes</span></h4>
            </div>
            <div class="panel-body">
                <form class="form-horizontal" action="#" role="form">
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="checkboxes">Inline Checkboxes</label>
                        <div class="col-lg-9">
                            <label class="checkbox-inline">
                                <input type="checkbox" id="inlineCheckbox1" value="option1" checked="checked">
                                Checked </label>
                            <label class="checkbox-inline">
                                <input type="checkbox" id="inlineCheckbox1" value="option1">
                                Unchecked </label>
                            <label class="checkbox-inline">
                                <input type="checkbox" id="inlineCheckbox1" value="option1" disabled="disabled">
                                Disabled </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="checkboxes">Default Checkboxes (stacked)</label>
                        <div class="col-lg-9">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="">
                                    Option one is this and that be sure to include why it's great </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="">
                                    Option two can also be checked and included in form results </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="">
                                    Option three can yes, you guessed it also be checked and included in form results </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="radios">Inline Radios</label>
                        <div class="col-lg-9">
                            <label class="radio-inline">
                                <input name="group1" type="radio" id="inlineCheckbox1" value="option1" checked="checked">
                                Checked </label>
                            <label class="radio-inline">
                                <input name="group1" type="radio" id="inlineCheckbox2" value="option2">
                                Unchecked </label>
                            <label class="radio-inline">
                                <input name="group1" type="radio" id="inlineCheckbox3" value="option3" disabled="disabled">
                                Disabled </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="radios">Default Radios (stacked)</label>
                        <div class="col-lg-9">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                    Option one is this and that be sure to include why it's great </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Option two can be something else and selecting it will deselect option one </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3" disabled="disabled">
                                    Option three is disabled </label>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4><span>Selects</span></h4>
            </div>
            <div class="panel-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="select">Simple select</label>
                        <div class="col-lg-9">
                            <select name="select" class="form-control">
                                <option>Who</option>
                                <option selected="selected">What</option>
                                <option>When</option>
                                <option>Where</option>
                                <option>How</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="select">Simple Multiselect</label>
                        <div class="col-lg-9">
                            <select name="select" class="nostyle form-control" multiple="multiple" >
                                <option>Who</option>
                                <option selected="selected">What</option>
                                <option>When</option>
                                <option>Where</option>
                                <option>How</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="select">Simple with filter</label>
                        <div class="col-lg-9">
                            <select name="select" id="select1" class="nostyle form-control" placeholder="Select state">
                                <option></option>
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI">Hawaii</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR">Oregon</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="select">Multiple select with filter</label>
                        <div class="col-lg-9">
                            <select name="select" id="select2" class="nostyle form-control" multiple="multiple">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI">Hawaii</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR">Oregon</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>