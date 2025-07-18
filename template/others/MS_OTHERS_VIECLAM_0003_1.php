<?php 
    $city = $action->getList('city', '', '', 'id', 'asc', '', '', '');
?>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />
<div class="gb-taohoso-vnwork">
    <div class="container">
        <div class="gb-taohoso-vnwork-header">

        </div>
        <!--Thông tin-->
        <div class="gb-taohoso-vnwork-info-cv">
            <div class="gb-taohoso-vnwork-thongtin">
                <h4>Thông tin</h4>
                <form action="">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="gb-taohoso-vnwork-thongtin-img">
                                <div class="picture-container">
                                    <div class="picture">
                                        <img src="" class="picture-src" id="wizardPicturePreview" title="">
                                        <input type="file" id="wizard-picture" name="fileToUpload">
                                        <input type="hidden" id="avatarUrl" name="avatar_url">
                                    </div>
                                    <h6>Chọn ảnh</h6>
                                    <p class="text-success avatar-status" style="display: none"></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-user-o" aria-hidden="true"></i>
                                        </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Họ
                                                <small class="text-red">*</small>
                                            </label>
                                            <input name="lastname" type="text" class="form-control" required="">
                                            <span class="material-input"></span></div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-user-o" aria-hidden="true"></i>
                                        </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Tên
                                                <small class="text-red">*</small>
                                            </label>
                                            <input name="firstname" type="text" class="form-control" required="">
                                            <span class="material-input"></span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-table" aria-hidden="true"></i>
                                        </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Chức Danh
                                                <small class="text-red">*</small>
                                            </label>
                                            <input id="keywordPosition" name="position" type="text" class="form-control" required="">
                                            <span class="material-input"></span></div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="select-wrapper">
                                        <label class="control-label select-label">Cấp bậc hiện tại
                                            <small class="text-red">*</small>
                                        </label>
                                        <select class="select2-selection--single" required="">
                                            <option value="">Vui lòng chọn...</option>
                                            <option value="1">Mới Tốt Nghiệp</option>
                                            <option value="5">Nhân viên</option>
                                            <option value="7">Trưởng Phòng</option>
                                            <option value="3">Giám Đốc và Cấp Cao Hơn</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="input-group input-year">
                                        <span class="input-group-addon">
                                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                                        </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Số năm kinh nghiệm
                                                <small class="text-red">*</small>
                                            </label>
                                            <input id="keywordPosition" name="years_of_exp" type="number" class="form-control" required="" min="0">
                                            <span class="material-input"></span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="checkbox new-graduate-checkbox">
                                        <label>
                                            <input type="checkbox" name="new_graduate"><span class="checkbox-material"><span class="check"></span></span>
                                            Tôi mới tốt nghiệp/chưa có kinh nghiệm làm việc
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-user-o" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Emaill
                                        <small class="text-red">*</small>
                                    </label>
                                    <input name="email" type="email" class="form-control" required="">
                                    <span class="material-input"></span></div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-user-o" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Điện thoại
                                        <small class="text-red">*</small>
                                    </label>
                                    <input name="dienthaoi" type="tel" class="form-control" required="">
                                    <span class="material-input"></span></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-table" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Ngày sinh
                                        <small class="text-red">*</small>
                                    </label>
                                    <input name="position" type="date" class="form-control" required="">
                                    <span class="material-input"></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="select-wrapper">
                                <label class="control-label select-label">Quốc tịch
                                    <small class="text-red">*</small>
                                </label>
                                <select class="select2-selection--single" required="">
                                    <option value="0">Vui lòng chọn...</option>
                                    <option value="1">Người Việt Nam</option>
                                    <option value="2">Ngoại quốc</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="input-group">
                                <div class="form-group label-floating">
                                    <label class="control-label">Giới Tính
                                        <small class="text-red">*</small>
                                    </label>
                                    <ul class="radio-vnwork">
                                        <li><label> <input type="radio"> Nam</label></li>
                                        <li><label> <input type="radio"> Nữ</label></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <div class="form-group label-floating">
                                    <label class="control-label">Tình trạng hôn nhân
                                        <small class="text-red">*</small>
                                    </label>
                                    <ul class="radio-vnwork">
                                        <li><label> <input type="radio"> Độc thân</label></li>
                                        <li><label> <input type="radio"> Đã kết hôn</label></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group label-floating">
                                <label class="control-label">Quốc Gia
                                    <small class="text-red">*</small>
                                </label>
                                <select class="selectpicker form-control" onchange="country(this)" data-show-subtext="true" data-live-search="true">
                                    <option value="0">Vui lòng chọn... </option>
                                    <option value="1">Việt Nam</option>
                                    <option value="2">Afghanistan</option>
                                    <option value="3">Albania</option>
                                    <option value="4">Algeria</option>
                                    <option value="5">American Samoa</option>
                                    <option value="6">Andorra</option>
                                    <option value="7">Angola</option>
                                    <option value="8">Anguilla</option>
                                    <option value="9">Antarctica</option>
                                    <option value="10">Antigua And Barbuda</option>
                                    <option value="11">Argentina</option>
                                    <option value="12">Armenia</option>
                                    <option value="13">Aruba</option>
                                    <option value="14">Úc</option>
                                    <option value="15">Áo</option>
                                    <option value="16">Azerbaijan</option>
                                    <option value="17">Bahamas</option>
                                    <option value="18">Bahrain</option>
                                    <option value="19">Bangladesh</option>
                                    <option value="20">Barbados</option>
                                    <option value="21">Belarus</option>
                                    <option value="22">Bỉ</option>
                                    <option value="23">Belize</option>
                                    <option value="24">Benin</option>
                                    <option value="25">Bermuda</option>
                                    <option value="26">Bhutan</option>
                                    <option value="27">Bolivia</option>
                                    <option value="28">Bosnia And Herzegowina</option>
                                    <option value="29">Botswana</option>
                                    <option value="30">Bouvet Island</option>
                                    <option value="31">Brazil</option>
                                    <option value="32">British Indian Ocean Territory</option>
                                    <option value="33">Brunei Darussalam</option>
                                    <option value="34">Bulgaria</option>
                                    <option value="35">Burkina Faso</option>
                                    <option value="36">Burundi</option>
                                    <option value="37">Cambodia</option>
                                    <option value="38">Cameroon</option>
                                    <option value="39">Canada</option>
                                    <option value="40">Cape Verde</option>
                                    <option value="41">Cayman Islands</option>
                                    <option value="42">Central African Republic</option>
                                    <option value="43">Chad</option>
                                    <option value="44">Chile</option>
                                    <option value="45">Trung Quốc</option>
                                    <option value="46">Christmas Island</option>
                                    <option value="47">Cocos (Keeling) Islands</option>
                                    <option value="48">Colombia</option>
                                    <option value="49">Comoros</option>
                                    <option value="50">Congo</option>
                                    <option value="51">Cook Islands</option>
                                    <option value="52">Costa Rica</option>
                                    <option value="53">Cote D'Ivoire</option>
                                    <option value="54">Croatia</option>
                                    <option value="55">Cuba</option>
                                    <option value="56">Cyprus</option>
                                    <option value="57">Czech Republic</option>
                                    <option value="58">Denmark</option>
                                    <option value="59">Djibouti</option>
                                    <option value="60">Dominica</option>
                                    <option value="61">Dominican Republic</option>
                                    <option value="62">East Timor</option>
                                    <option value="63">Ecuador</option>
                                    <option value="64">Egypt</option>
                                    <option value="65">El Salvador</option>
                                    <option value="66">Equatorial Guinea</option>
                                    <option value="67">Eritrea</option>
                                    <option value="68">Estonia</option><option value="69">Ethiopia</option><option value="70">Falkland Islands</option><option value="71">Faroe Islands</option><option value="72">Fiji</option><option value="73">Finland</option><option value="74">France</option><option value="75">France, Metropolitan</option><option value="76">French Guiana</option><option value="77">French Polynesia</option><option value="78">French Southern Territories</option><option value="79">Gabon</option><option value="80">Gambia</option><option value="90">Guatemala</option><option value="91">Guinea</option><option value="92">Guinea-Bissau</option><option value="93">Guyana</option><option value="94">Haiti</option><option value="95">Heard And Mc Donald Islands</option><option value="96">Honduras</option><option value="97">Hong Kong</option><option value="98">Hungary</option><option value="99">Iceland</option><option value="100">India</option><option value="101">Indonesia</option><option value="102">Iran</option><option value="103">Iraq</option><option value="104">Ireland</option><option value="105">Israel</option><option value="106">Italy</option><option value="107">Jamaica</option><option value="108">Japan</option><option value="109">Jordan</option><option value="110">Kazakhstan</option><option value="111">Kenya</option><option value="112">Kiribati</option><option value="113">North Korea (People's Republic Of Korea)</option><option value="114">South Korea (Republic Of Korea)</option><option value="115">Kuwait</option><option value="116">Kyrgyzstan</option><option value="117">Lao People's Republic</option><option value="118">Latvia</option><option value="119">Lebanon</option><option value="120">Lesotho</option><option value="121">Liberia</option><option value="122">Libyan Arab Jamahiriya</option><option value="123">Liechtenstein</option><option value="124">Lithuania</option><option value="125">Luxembourg</option><option value="126">Macau</option><option value="127">Macedonia</option><option value="128">Madagascar</option><option value="129">Malawi</option><option value="130">Malaysia</option><option value="131">Maldives</option><option value="132">Mali</option><option value="133">Malta</option><option value="134">Marshall Islands</option><option value="135">Martinique</option><option value="136">Mauritania</option><option value="137">Mauritius</option><option value="138">Mayotte</option><option value="139">Mexico</option><option value="140">Micronesia</option><option value="141">Moldova</option><option value="142">Monaco</option><option value="143">Mongolia</option><option value="144">Montserrat</option><option value="145">Morocco</option><option value="146">Mozambique</option><option value="147">Myanmar</option><option value="148">Namibia</option><option value="149">Nauru</option><option value="150">Nepal</option><option value="151">Netherlands</option><option value="152">Netherlands Antilles</option><option value="153">New Caledonia</option><option value="154">New Zealand</option><option value="155">Nicaragua</option><option value="156">Niger</option><option value="157">Nigeria</option><option value="158">Niue</option><option value="159">Norfolk Island</option><option value="160">Northern Mariana Islands</option><option value="161">Norway</option><option value="162">Oman</option><option value="163">Pakistan</option><option value="164">Palau</option><option value="165">Panama</option><option value="166">Papua New Guinea</option><option value="167">Paraguay</option><option value="168">Peru</option><option value="169">Philippines</option><option value="170">Pitcairn</option><option value="171">Poland</option><option value="172">Portugal</option><option value="173">Puerto Rico</option><option value="174">Qatar</option><option value="175">Reunion</option><option value="176">Romania</option><option value="177">Russian Federation</option><option value="178">Rwanda</option><option value="179">Saint Kitts And Nevis</option><option value="180">Saint Lucia</option><option value="181">Saint Vincent And The Grenadines</option><option value="182">Samoa</option><option value="183">San Marino</option><option value="184">Sao Tome And Principe</option><option value="185">Saudi Arabia</option><option value="186">Senegal</option><option value="187">Seychelles</option><option value="188">Sierra Leone</option><option value="189">Singapore</option><option value="190">Slovakia</option><option value="191">Slovenia</option><option value="192">Solomon Islands</option><option value="193">Somalia</option><option value="194">South Africa</option><option value="195">South Georgia/South Sandwich Islands</option><option value="196">Spain</option><option value="197">Sri Lanka</option><option value="198">St Helena</option><option value="199">St Pierre and Miquelon</option><option value="200">Sudan</option><option value="201">Suriname</option><option value="202">Svalbard And Jan Mayen Islands</option><option value="203">Swaziland</option><option value="204">Sweden</option><option value="205">Switzerland</option><option value="206">Syrian Arab Republic</option><option value="207">Taiwan</option><option value="208">Tajikistan</option><option value="209">Tanzania</option><option value="210">Thailand</option><option value="211">Togo</option><option value="212">Tokelau</option><option value="213">Tonga</option><option value="214">Trinidad And Tobago</option><option value="215">Tunisia</option><option value="216">Turkey</option><option value="217">Turkmenistan</option><option value="218">Turks And Caicos Islands</option><option value="219">Tuvalu</option><option value="220">Uganda</option><option value="221">Ukraine</option><option value="222">United Arab Emirates</option><option value="223">United Kingdom</option><option value="224">United States</option><option value="225">United States Minor Outlying Islands</option><option value="226">Uruguay</option><option value="227">Uzbekistan</option><option value="228">Vanuatu</option><option value="229">Vatican City State</option><option value="230">Venezuela</option><option value="231">Virgin Islands (British)</option><option value="232">Virgin Islands (U.S.)</option><option value="233">Wallis And Futuna Islands</option><option value="234">Western Sahara</option><option value="235">Yemen</option><option value="236">Zaire</option><option value="237">Zambia</option><option value="238">Zimbabwe</option><option value="239">Nước khác</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group label-floating">
                                <label class="control-label">Tỉnh/Thành Phố
                                    <small class="text-red">*</small>
                                </label>
                                <select class="selectpicker form-control" id="city" data-show-subtext="true" data-live-search="true">
                                    <option value="0">Vui lòng chọn... </option>
                                    <option value="2">An Giang </option>
                                    <option value="3">Bà Rịa - Vũng Tàu</option>
                                    <option value="4">Bắc Kạn</option>
                                    <option value="5">Bắc Giang</option>
                                    <option value="6">Bạc Liêu </option>
                                    <option value="7">Bắc Ninh </option>
                                    <option value="8">Bến Tre</option>
                                    <option value="9">Biên Hòa </option>
                                    <option value="10">Bình Định</option>
                                    <option value="11">Bình Dương </option>
                                    <option value="12">Bình Phước </option>
                                    <option value="13">Bình Thuận </option>
                                    <option value="14">Cà Mau </option>
                                    <option value="15">Cần Thơ</option>
                                    <option value="16">Cao Bằng </option>
                                    <option value="17">Đà Nẵng</option>
                                    <option value="18">Đắk Lắk</option>
                                    <option value="19">Đồng Nai </option>
                                    <option value="20">Đồng Tháp</option>
                                    <option value="21">Gia Lai</option>
                                    <option value="22">Hà Giang </option>
                                    <option value="23">Hà Nam </option>
                                    <option value="24">Hà Nội </option>
                                    <option value="25">Hà Tây </option>
                                    <option value="26">Hà Tĩnh</option>
                                    <option value="27">Hải Dương</option>
                                    <option value="28">Hải Phòng</option>
                                    <option value="29">Hồ Chí Minh</option>
                                    <option value="30">Hòa Bình </option>
                                    <option value="31">Huế</option>
                                    <option value="32">Hưng Yên </option>
                                    <option value="33">Khánh Hòa</option>
                                    <option value="34">Kon Tum</option>
                                    <option value="35">Lai Châu </option>
                                    <option value="36">Lâm Đồng </option>
                                    <option value="37">Lạng Sơn </option>
                                    <option value="38">Lào Cai</option>
                                    <option value="39">Long An</option>
                                    <option value="40">Nam Định </option>
                                    <option value="41">Nghệ An</option>
                                    <option value="42">Ninh Bình</option>
                                    <option value="43">Ninh Thuận </option>
                                    <option value="44">Phú Thọ</option>
                                    <option value="45">Phú Yên</option>
                                    <option value="46">Quảng Bình</option>
                                    <option value="47">Quảng Nam</option>
                                    <option value="48">Quảng Ngãi</option>
                                    <option value="49">Quảng Ninh</option>
                                    <option value="50">Quảng Trị</option>
                                    <option value="51">Sóc Trăng</option>
                                    <option value="52">Sơn La</option>
                                    <option value="53">Tây Ninh</option>
                                    <option value="54">Thái Bình</option>
                                    <option value="55">Thái Nguyên</option>
                                    <option value="56">Thanh Hóa</option>
                                    <option value="57">Thừa Thiên-Huế</option>
                                    <option value="58">Tiền Giang</option>
                                    <option value="59">Trà Vinh</option>
                                    <option value="60">Tuyên Quang</option>
                                    <option value="61">Kiên Giang</option>
                                    <option value="62">Vĩnh Long</option>
                                    <option value="63">Vĩnh Phúc</option>
                                    <option value="65">Yên Bái</option>
                                    <option value="66">Khác</option>
                                    <option value="69">Điện Biên</option>
                                    <option value="70">Quốc tế</option>
                                    <option value="71">ĐBSCL</option>
                                    <option value="72">Hậu Giang</option>
                                    <option value="73">Đắk Nông</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group label-floating">
                                <label class="control-label">Quận/Huyện
                                    <small class="text-red">*</small>
                                </label>
                                <select class="selectpicker form-control" data-show-subtext="true" data-live-search="true">
                                    <option value="0">Vui lòng chọn... </option>
                                    <option value="2">An Giang </option>
                                    <option value="3">Bà Rịa - Vũng Tàu</option>
                                    <option value="4">Bắc Kạn</option>
                                    <option value="5">Bắc Giang</option>
                                    <option value="6">Bạc Liêu </option>
                                    <option value="7">Bắc Ninh </option>
                                    <option value="8">Bến Tre</option>
                                    <option value="9">Biên Hòa </option>
                                    <option value="10">Bình Định</option>
                                    <option value="11">Bình Dương </option>
                                    <option value="12">Bình Phước </option>
                                    <option value="13">Bình Thuận </option>
                                    <option value="14">Cà Mau </option>
                                    <option value="15">Cần Thơ</option>
                                    <option value="16">Cao Bằng </option>
                                    <option value="17">Đà Nẵng</option>
                                    <option value="18">Đắk Lắk</option>
                                    <option value="19">Đồng Nai </option>
                                    <option value="20">Đồng Tháp</option>
                                    <option value="21">Gia Lai</option>
                                    <option value="22">Hà Giang </option>
                                    <option value="23">Hà Nam </option>
                                    <option value="24">Hà Nội </option>
                                    <option value="25">Hà Tây </option>
                                    <option value="26">Hà Tĩnh</option>
                                    <option value="27">Hải Dương</option>
                                    <option value="28">Hải Phòng</option>
                                    <option value="29">Hồ Chí Minh</option>
                                    <option value="30">Hòa Bình </option>
                                    <option value="31">Huế</option>
                                    <option value="32">Hưng Yên </option>
                                    <option value="33">Khánh Hòa</option>
                                    <option value="34">Kon Tum</option>
                                    <option value="35">Lai Châu </option>
                                    <option value="36">Lâm Đồng </option>
                                    <option value="37">Lạng Sơn </option>
                                    <option value="38">Lào Cai</option>
                                    <option value="39">Long An</option>
                                    <option value="40">Nam Định </option>
                                    <option value="41">Nghệ An</option>
                                    <option value="42">Ninh Bình</option>
                                    <option value="43">Ninh Thuận </option>
                                    <option value="44">Phú Thọ</option>
                                    <option value="45">Phú Yên</option>
                                    <option value="46">Quảng Bình</option>
                                    <option value="47">Quảng Nam</option>
                                    <option value="48">Quảng Ngãi</option>
                                    <option value="49">Quảng Ninh</option>
                                    <option value="50">Quảng Trị</option>
                                    <option value="51">Sóc Trăng</option>
                                    <option value="52">Sơn La</option>
                                    <option value="53">Tây Ninh</option>
                                    <option value="54">Thái Bình</option>
                                    <option value="55">Thái Nguyên</option>
                                    <option value="56">Thanh Hóa</option>
                                    <option value="57">Thừa Thiên-Huế</option>
                                    <option value="58">Tiền Giang</option>
                                    <option value="59">Trà Vinh</option>
                                    <option value="60">Tuyên Quang</option>
                                    <option value="61">Kiên Giang</option>
                                    <option value="62">Vĩnh Long</option>
                                    <option value="63">Vĩnh Phúc</option>
                                    <option value="65">Yên Bái</option>
                                    <option value="66">Khác</option>
                                    <option value="69">Điện Biên</option>
                                    <option value="70">Quốc tế</option>
                                    <option value="71">ĐBSCL</option>
                                    <option value="72">Hậu Giang</option>
                                    <option value="73">Đắk Nông</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Địa Chỉ
                                        <small class="text-red">*</small>
                                    </label>
                                    <input type="text" class="form-control" required="">
                                    <span class="material-input"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!--Thông Tin Chung-->
        <div class="gb-taohoso-vnwork-info-cv">
            <div class="gb-taohoso-vnwork-thongtin">
                <h4>Thông Tin Chung</h4>
                <form action="">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-user-o" aria-hidden="true"></i>
                        </span>
                        <div class="form-group label-floating">
                            <label class="control-label">
                                Mô tả ngắn gọn thông tin hồ sơ và mục tiêu nghề nghiệp của bạn
                                <small class="text-red">*</small>
                            </label>
                            <input name="lastname" type="text" class="form-control" required="">
                            <textarea rows="5"></textarea>
                            <span class="material-input"></span>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!--Kỹ năng-->
        <div class="gb-taohoso-vnwork-info-cv">
            <h4>Kỹ năng</h4>
            <p>5 kỹ năng được đánh giá cao nhất sẽ được hiện trong cv. Bạn nên lựa chọn những kỹ năng quan trọng nhất.</p>
            <div class="gb-taohoso-vnwork-info-cv-content-kynang"></div>
            <button id="addMoreSkill" class="btn-add-more btn-add-more-kynang">Add more</button>
        </div>

        <!--Ngôn ngữ-->
        <div class="gb-taohoso-vnwork-info-cv">
            <h4>Ngôn ngữ</h4>
            <p>5 kỹ năng được đánh giá cao nhất sẽ được hiện trong cv. Bạn nên lựa chọn những kỹ năng quan trọng nhất.</p>
            <div class="gb-taohoso-vnwork-info-cv-content-ngonngu "></div>
            <button id="addMoreSkill" class="btn-add-more btn-add-more-ngonngu">Add more</button>
        </div>

        <!--King nghiệm làm việc-->
        <div class="gb-taohoso-vnwork-info-cv">
            <h4>Kinh Nghiệm Làm Việc</h4>
            <div class="gb-taohoso-vnwork-info-cv-content-kinhnghiem "></div>
            <button id="addMoreSkill" class="btn-add-more btn-add-more-kinhnghiem">Add more</button>
        </div>

        <!--Học vấn và bằng cấp-->
        <div class="gb-taohoso-vnwork-info-cv">
            <h4>Học vấn và bằng cấp</h4>
            <div class="gb-taohoso-vnwork-info-cv-content-hocvan"></div>
            <button id="addMoreSkill" class="btn-add-more btn-add-more-hocvan">Add more</button>
        </div>

        <!--Thông tin tham khảo-->
        <div class="gb-taohoso-vnwork-info-cv">
            <h4>Thông tin tham khảo</h4>
            <div class="gb-taohoso-vnwork-info-cv-content-thamkhao"></div>
            <button id="addMoreSkill" class="btn-add-more btn-add-more-thamkhao">Add more</button>
        </div>

    </div>
</div>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>

<!--SCRIPT KỸ NĂNG-->
<script>
    $(document).ready(function () {
        $('.gb-taohoso-vnwork-info-cv .btn-add-more-kynang').click(function (e) {
            e.preventDefault();
            $('.gb-taohoso-vnwork-info-cv-content-kynang').append('<div class="gb-taohoso-kynang-item">\n' +
                '                <span class="gb-btn-close-item">x</span>\n' +
                '                <div class="row">\n' +
                '                    <div class="col-sm-6">\n' +
                '                        <div class="form-group label-floating">\n' +
                '                            <label class="control-label">\n' +
                '                                Hãy điền thông tin về lĩnh vực chuyên môn của bạn.\n' +
                '                                <small class="text-red">*</small>\n' +
                '                            </label>\n' +
                '                            <select class="selectpicker form-control" data-show-subtext="true" data-live-search="true">\n' +
                '                                <option value="0">Vui lòng chọn... </option>\n' +
                '                                <option value="2">An Giang </option>\n' +
                '                                <option value="3">Bà Rịa - Vũng Tàu</option>\n' +
                '                                <option value="4">Bắc Kạn</option>\n' +
                '                                <option value="5">Bắc Giang</option>\n' +
                '                                <option value="6">Bạc Liêu </option>\n' +
                '                                <option value="7">Bắc Ninh </option>\n' +
                '                                <option value="8">Bến Tre</option>\n' +
                '                                <option value="9">Biên Hòa </option>\n' +
                '                                <option value="10">Bình Định</option>\n' +
                '                                <option value="11">Bình Dương </option>\n' +
                '                                <option value="12">Bình Phước </option>\n' +
                '                                <option value="13">Bình Thuận </option>\n' +
                '                                <option value="14">Cà Mau </option>\n' +
                '                                <option value="15">Cần Thơ</option>\n' +
                '                                <option value="16">Cao Bằng </option>\n' +
                '                                <option value="17">Đà Nẵng</option>\n' +
                '                                <option value="18">Đắk Lắk</option>\n' +
                '                                <option value="19">Đồng Nai </option>\n' +
                '                                <option value="20">Đồng Tháp</option>\n' +
                '                                <option value="21">Gia Lai</option>\n' +
                '                                <option value="22">Hà Giang </option>\n' +
                '                                <option value="23">Hà Nam </option>\n' +
                '                                <option value="24">Hà Nội </option>\n' +
                '                                <option value="25">Hà Tây </option>\n' +
                '                                <option value="26">Hà Tĩnh</option>\n' +
                '                                <option value="27">Hải Dương</option>\n' +
                '                                <option value="28">Hải Phòng</option>\n' +
                '                                <option value="29">Hồ Chí Minh</option>\n' +
                '                                <option value="30">Hòa Bình </option>\n' +
                '                                <option value="31">Huế</option>\n' +
                '                                <option value="32">Hưng Yên </option>\n' +
                '                                <option value="33">Khánh Hòa</option>\n' +
                '                                <option value="34">Kon Tum</option>\n' +
                '                                <option value="35">Lai Châu </option>\n' +
                '                                <option value="36">Lâm Đồng </option>\n' +
                '                                <option value="37">Lạng Sơn </option>\n' +
                '                                <option value="38">Lào Cai</option>\n' +
                '                                <option value="39">Long An</option>\n' +
                '                                <option value="40">Nam Định </option>\n' +
                '                                <option value="41">Nghệ An</option>\n' +
                '                                <option value="42">Ninh Bình</option>\n' +
                '                                <option value="43">Ninh Thuận </option>\n' +
                '                                <option value="44">Phú Thọ</option>\n' +
                '                                <option value="45">Phú Yên</option>\n' +
                '                                <option value="46">Quảng Bình</option>\n' +
                '                                <option value="47">Quảng Nam</option>\n' +
                '                                <option value="48">Quảng Ngãi</option>\n' +
                '                                <option value="49">Quảng Ninh</option>\n' +
                '                                <option value="50">Quảng Trị</option>\n' +
                '                                <option value="51">Sóc Trăng</option>\n' +
                '                                <option value="52">Sơn La</option>\n' +
                '                                <option value="53">Tây Ninh</option>\n' +
                '                                <option value="54">Thái Bình</option>\n' +
                '                                <option value="55">Thái Nguyên</option>\n' +
                '                                <option value="56">Thanh Hóa</option>\n' +
                '                                <option value="57">Thừa Thiên-Huế</option>\n' +
                '                                <option value="58">Tiền Giang</option>\n' +
                '                                <option value="59">Trà Vinh</option>\n' +
                '                                <option value="60">Tuyên Quang</option>\n' +
                '                                <option value="61">Kiên Giang</option>\n' +
                '                                <option value="62">Vĩnh Long</option>\n' +
                '                                <option value="63">Vĩnh Phúc</option>\n' +
                '                                <option value="65">Yên Bái</option>\n' +
                '                                <option value="66">Khác</option>\n' +
                '                                <option value="69">Điện Biên</option>\n' +
                '                                <option value="70">Quốc tế</option>\n' +
                '                                <option value="71">ĐBSCL</option>\n' +
                '                                <option value="72">Hậu Giang</option>\n' +
                '                                <option value="73">Đắk Nông</option>\n' +
                '                            </select>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                    <div class="col-sm-6">\n' +
                '                        <ul class="vote-star">\n' +
                '                            <li><label><input type="checkbox"> 1 sao</label></li>\n' +
                '                            <li><label><input type="checkbox"> 2 sao</label></li>\n' +
                '                            <li><label><input type="checkbox"> 3 sao</label></li>\n' +
                '                            <li><label><input type="checkbox"> 4 sao</label></li>\n' +
                '                            <li><label><input type="checkbox"> 5 sao</label></li>\n' +
                '                            <li><label><input type="checkbox"> 5 sao</label></li>\n' +
                '                        </ul>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>')
            // return false;
        });
        $('.gb-taohoso-vnwork-info-cv-content-kynang').on('click', '.gb-btn-close-item', function(e) {
            e.preventDefault();

            $(this).parent().remove();
        });
    });
</script>

<!--SCRIPT NGÔN NGỮ-->
<script>
    $(document).ready(function () {
        $('.gb-taohoso-vnwork-info-cv .btn-add-more-ngonngu').click(function (e) {
            e.preventDefault();
            $('.gb-taohoso-vnwork-info-cv-content-ngonngu').append('<div class="gb-taohoso-kynang-item">\n' +
                '                    <span class="gb-btn-close-item">x</span>\n' +
                '                    <div class="row">\n' +
                '                        <div class="col-sm-6">\n' +
                '                            <label class="control-label">\n' +
                '                                Hãy chọn ngôn ngữ của bạn.\n' +
                '                                <small class="text-red">*</small>\n' +
                '                            </label>\n' +
                '                            <select class="selectpicker form-control" data-show-subtext="true" data-live-search="true">\n' +
                '                                <option value="0">Vui lòng chọn... </option>\n' +
                '                                <option value="1">Việt Nam</option>\n' +
                '                                <option value="2">Afghanistan</option>\n' +
                '                                <option value="3">Albania</option>\n' +
                '                                <option value="4">Algeria</option>\n' +
                '                                <option value="5">American Samoa</option>\n' +
                '                                <option value="6">Andorra</option>\n' +
                '                                <option value="7">Angola</option>\n' +
                '                                <option value="8">Anguilla</option>\n' +
                '                                <option value="9">Antarctica</option>\n' +
                '                                <option value="10">Antigua And Barbuda</option>\n' +
                '                                <option value="11">Argentina</option>\n' +
                '                                <option value="12">Armenia</option>\n' +
                '                                <option value="13">Aruba</option>\n' +
                '                                <option value="14">Úc</option>\n' +
                '                                <option value="15">Áo</option>\n' +
                '                                <option value="16">Azerbaijan</option>\n' +
                '                                <option value="17">Bahamas</option>\n' +
                '                                <option value="18">Bahrain</option>\n' +
                '                                <option value="19">Bangladesh</option>\n' +
                '                                <option value="20">Barbados</option>\n' +
                '                                <option value="21">Belarus</option>\n' +
                '                                <option value="22">Bỉ</option>\n' +
                '                                <option value="23">Belize</option>\n' +
                '                                <option value="24">Benin</option>\n' +
                '                                <option value="25">Bermuda</option>\n' +
                '                                <option value="26">Bhutan</option>\n' +
                '                                <option value="27">Bolivia</option>\n' +
                '                                <option value="28">Bosnia And Herzegowina</option>\n' +
                '                                <option value="29">Botswana</option>\n' +
                '                                <option value="30">Bouvet Island</option>\n' +
                '                                <option value="31">Brazil</option>\n' +
                '                                <option value="32">British Indian Ocean Territory</option>\n' +
                '                                <option value="33">Brunei Darussalam</option>\n' +
                '                                <option value="34">Bulgaria</option>\n' +
                '                                <option value="35">Burkina Faso</option>\n' +
                '                                <option value="36">Burundi</option>\n' +
                '                                <option value="37">Cambodia</option>\n' +
                '                                <option value="38">Cameroon</option>\n' +
                '                                <option value="39">Canada</option>\n' +
                '                                <option value="40">Cape Verde</option>\n' +
                '                                <option value="41">Cayman Islands</option>\n' +
                '                                <option value="42">Central African Republic</option>\n' +
                '                                <option value="43">Chad</option>\n' +
                '                                <option value="44">Chile</option>\n' +
                '                                <option value="45">Trung Quốc</option>\n' +
                '                                <option value="46">Christmas Island</option>\n' +
                '                                <option value="47">Cocos (Keeling) Islands</option>\n' +
                '                                <option value="48">Colombia</option>\n' +
                '                                <option value="49">Comoros</option>\n' +
                '                                <option value="50">Congo</option>\n' +
                '                                <option value="51">Cook Islands</option>\n' +
                '                                <option value="52">Costa Rica</option>\n' +
                '                                <option value="53">Cote D\'Ivoire</option>\n' +
                '                                <option value="54">Croatia</option>\n' +
                '                                <option value="55">Cuba</option>\n' +
                '                                <option value="56">Cyprus</option>\n' +
                '                                <option value="57">Czech Republic</option>\n' +
                '                                <option value="58">Denmark</option>\n' +
                '                                <option value="59">Djibouti</option>\n' +
                '                                <option value="60">Dominica</option>\n' +
                '                                <option value="61">Dominican Republic</option>\n' +
                '                                <option value="62">East Timor</option>\n' +
                '                                <option value="63">Ecuador</option>\n' +
                '                                <option value="64">Egypt</option>\n' +
                '                                <option value="65">El Salvador</option>\n' +
                '                                <option value="66">Equatorial Guinea</option>\n' +
                '                                <option value="67">Eritrea</option>\n' +
                '                                <option value="68">Estonia</option><option value="69">Ethiopia</option><option value="70">Falkland Islands</option><option value="71">Faroe Islands</option><option value="72">Fiji</option><option value="73">Finland</option><option value="74">France</option><option value="75">France, Metropolitan</option><option value="76">French Guiana</option><option value="77">French Polynesia</option><option value="78">French Southern Territories</option><option value="79">Gabon</option><option value="80">Gambia</option><option value="90">Guatemala</option><option value="91">Guinea</option><option value="92">Guinea-Bissau</option><option value="93">Guyana</option><option value="94">Haiti</option><option value="95">Heard And Mc Donald Islands</option><option value="96">Honduras</option><option value="97">Hong Kong</option><option value="98">Hungary</option><option value="99">Iceland</option><option value="100">India</option><option value="101">Indonesia</option><option value="102">Iran</option><option value="103">Iraq</option><option value="104">Ireland</option><option value="105">Israel</option><option value="106">Italy</option><option value="107">Jamaica</option><option value="108">Japan</option><option value="109">Jordan</option><option value="110">Kazakhstan</option><option value="111">Kenya</option><option value="112">Kiribati</option><option value="113">North Korea (People\'s Republic Of Korea)</option><option value="114">South Korea (Republic Of Korea)</option><option value="115">Kuwait</option><option value="116">Kyrgyzstan</option><option value="117">Lao People\'s Republic</option><option value="118">Latvia</option><option value="119">Lebanon</option><option value="120">Lesotho</option><option value="121">Liberia</option><option value="122">Libyan Arab Jamahiriya</option><option value="123">Liechtenstein</option><option value="124">Lithuania</option><option value="125">Luxembourg</option><option value="126">Macau</option><option value="127">Macedonia</option><option value="128">Madagascar</option><option value="129">Malawi</option><option value="130">Malaysia</option><option value="131">Maldives</option><option value="132">Mali</option><option value="133">Malta</option><option value="134">Marshall Islands</option><option value="135">Martinique</option><option value="136">Mauritania</option><option value="137">Mauritius</option><option value="138">Mayotte</option><option value="139">Mexico</option><option value="140">Micronesia</option><option value="141">Moldova</option><option value="142">Monaco</option><option value="143">Mongolia</option><option value="144">Montserrat</option><option value="145">Morocco</option><option value="146">Mozambique</option><option value="147">Myanmar</option><option value="148">Namibia</option><option value="149">Nauru</option><option value="150">Nepal</option><option value="151">Netherlands</option><option value="152">Netherlands Antilles</option><option value="153">New Caledonia</option><option value="154">New Zealand</option><option value="155">Nicaragua</option><option value="156">Niger</option><option value="157">Nigeria</option><option value="158">Niue</option><option value="159">Norfolk Island</option><option value="160">Northern Mariana Islands</option><option value="161">Norway</option><option value="162">Oman</option><option value="163">Pakistan</option><option value="164">Palau</option><option value="165">Panama</option><option value="166">Papua New Guinea</option><option value="167">Paraguay</option><option value="168">Peru</option><option value="169">Philippines</option><option value="170">Pitcairn</option><option value="171">Poland</option><option value="172">Portugal</option><option value="173">Puerto Rico</option><option value="174">Qatar</option><option value="175">Reunion</option><option value="176">Romania</option><option value="177">Russian Federation</option><option value="178">Rwanda</option><option value="179">Saint Kitts And Nevis</option><option value="180">Saint Lucia</option><option value="181">Saint Vincent And The Grenadines</option><option value="182">Samoa</option><option value="183">San Marino</option><option value="184">Sao Tome And Principe</option><option value="185">Saudi Arabia</option><option value="186">Senegal</option><option value="187">Seychelles</option><option value="188">Sierra Leone</option><option value="189">Singapore</option><option value="190">Slovakia</option><option value="191">Slovenia</option><option value="192">Solomon Islands</option><option value="193">Somalia</option><option value="194">South Africa</option><option value="195">South Georgia/South Sandwich Islands</option><option value="196">Spain</option><option value="197">Sri Lanka</option><option value="198">St Helena</option><option value="199">St Pierre and Miquelon</option><option value="200">Sudan</option><option value="201">Suriname</option><option value="202">Svalbard And Jan Mayen Islands</option><option value="203">Swaziland</option><option value="204">Sweden</option><option value="205">Switzerland</option><option value="206">Syrian Arab Republic</option><option value="207">Taiwan</option><option value="208">Tajikistan</option><option value="209">Tanzania</option><option value="210">Thailand</option><option value="211">Togo</option><option value="212">Tokelau</option><option value="213">Tonga</option><option value="214">Trinidad And Tobago</option><option value="215">Tunisia</option><option value="216">Turkey</option><option value="217">Turkmenistan</option><option value="218">Turks And Caicos Islands</option><option value="219">Tuvalu</option><option value="220">Uganda</option><option value="221">Ukraine</option><option value="222">United Arab Emirates</option><option value="223">United Kingdom</option><option value="224">United States</option><option value="225">United States Minor Outlying Islands</option><option value="226">Uruguay</option><option value="227">Uzbekistan</option><option value="228">Vanuatu</option><option value="229">Vatican City State</option><option value="230">Venezuela</option><option value="231">Virgin Islands (British)</option><option value="232">Virgin Islands (U.S.)</option><option value="233">Wallis And Futuna Islands</option><option value="234">Western Sahara</option><option value="235">Yemen</option><option value="236">Zaire</option><option value="237">Zambia</option><option value="238">Zimbabwe</option><option value="239">Nước khác</option>\n' +
                '                            </select>\n' +
                '                        </div>\n' +
                '                        <div class="col-sm-6">\n' +
                '                            <ul class="vote-star">\n' +
                '                                <li><label><input type="checkbox"> Sơ cấp</label></li>\n' +
                '                                <li><label><input type="checkbox"> Trung cấp</label></li>\n' +
                '                                <li><label><input type="checkbox"> Cao cấp</label></li>\n' +
                '                                <li><label><input type="checkbox"> Bản ngữ</label></li>\n' +
                '                            </ul>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                </div>')
            // return false;
        });
        $('.gb-taohoso-vnwork-info-cv-content-ngonngu').on('click', '.gb-btn-close-item', function(e) {
            e.preventDefault();

            $(this).parent().remove();
        });
    });
</script>

<!--SCRIPT KINH NGHIỆM-->
<script>
    $(document).ready(function () {
        $('.gb-taohoso-vnwork-info-cv .btn-add-more-kinhnghiem').click(function (e) {
            e.preventDefault();
            $('.gb-taohoso-vnwork-info-cv-content-kinhnghiem').append('<div class="gb-taohoso-kynang-item">\n' +
                '                    <span class="gb-btn-close-item">x</span>\n' +
                '                <div class="row">\n' +
                '                    <div class="col-sm-6">\n' +
                '                        <div class="input-group">\n' +
                '                            <span class="input-group-addon">\n' +
                '                                <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                            </span>\n' +
                '                            <div class="form-group label-floating">\n' +
                '                                <label class="control-label">Công ty\n' +
                '                                    <small class="text-red">*</small>\n' +
                '                                </label>\n' +
                '                                <input name="email" type="text" class="form-control" required="">\n' +
                '                                <span class="material-input"></span></div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                    <div class="col-sm-6">\n' +
                '                        <div class="input-group">\n' +
                '                            <span class="input-group-addon">\n' +
                '                                <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                            </span>\n' +
                '                            <div class="form-group label-floating">\n' +
                '                                <label class="control-label">Chức danh\n' +
                '                                    <small class="text-red">*</small>\n' +
                '                                </label>\n' +
                '                                <input name="email" type="text" class="form-control" required="">\n' +
                '                                <span class="material-input"></span></div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '                <div class="row">\n' +
                '                    <div class="col-sm-4">\n' +
                '                        <div class="input-group">\n' +
                '                            <span class="input-group-addon">\n' +
                '                                <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                            </span>\n' +
                '                            <div class="form-group label-floating">\n' +
                '                                <label class="control-label">Công ty\n' +
                '                                    <small class="text-red">*</small>\n' +
                '                                </label>\n' +
                '                                <input name="email" type="month" class="form-control" required="">\n' +
                '                                <span class="material-input"></span></div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                    <div class="col-sm-4">\n' +
                '                        <div class="input-group">\n' +
                '                            <span class="input-group-addon">\n' +
                '                                <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                            </span>\n' +
                '                            <div class="form-group label-floating">\n' +
                '                                <label class="control-label">Chức danh\n' +
                '                                    <small class="text-red">*</small>\n' +
                '                                </label>\n' +
                '                                <input name="email" type="month" class="form-control" required="">\n' +
                '                                <span class="material-input"></span></div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                    <div class="col-sm-4">\n' +
                '                        <div class="radio-vnwork">\n' +
                '                            <label><input type="checkbox"> Công việc hiện tại</label>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '                <div class="row">\n' +
                '                    <div class="col-sm-12">\n' +
                '                        <div class="input-group">\n' +
                '                        <span class="input-group-addon">\n' +
                '                            <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                        </span>\n' +
                '                            <div class="form-group label-floating">\n' +
                '                                <input name="lastname" type="text" class="form-control" required="">\n' +
                '                                <textarea rows="5"></textarea>\n' +
                '                                <span class="material-input"></span>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>')
            // return false;
        });
        $('.gb-taohoso-vnwork-info-cv-content-kinhnghiem').on('click', '.gb-btn-close-item', function(e) {
            e.preventDefault();

            $(this).parent().remove();
        });
    });
</script>

<!--HỌC VẤN VÀ BẰNG CẤP-->
<script>
    $(document).ready(function () {
        $('.gb-taohoso-vnwork-info-cv .btn-add-more-hocvan').click(function (e) {
            e.preventDefault();
            $('.gb-taohoso-vnwork-info-cv-content-hocvan').append('<div class="gb-taohoso-kynang-item">\n' +
                '                    <span class="gb-btn-close-item">x</span>\n' +
                '                    <form action="">\n' +
                '                    <div class="row">\n' +
                '                        <div class="col-md-12">\n' +
                '                            <div class="input-group">\n' +
                '                                <span class="input-group-addon">\n' +
                '                                    <i class="fa fa-map-marker" aria-hidden="true"></i>\n' +
                '                                </span>\n' +
                '                                <div class="form-group label-floating">\n' +
                '                                    <label class="control-label">Chuyên ngành\n' +
                '                                        <small class="text-red">*</small>\n' +
                '                                    </label>\n' +
                '                                    <input type="text" class="form-control" required="">\n' +
                '                                    <span class="material-input"></span>\n' +
                '                                </div>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                    <div class="row">\n' +
                '                        <div class="col-sm-6">\n' +
                '                            <div class="input-group">\n' +
                '                                <span class="input-group-addon">\n' +
                '                                    <i class="fa fa-map-marker" aria-hidden="true"></i>\n' +
                '                                </span>\n' +
                '                                <div class="form-group label-floating">\n' +
                '                                    <label class="control-label">Trường\n' +
                '                                        <small class="text-red">*</small>\n' +
                '                                    </label>\n' +
                '                                    <input type="text" class="form-control" required="">\n' +
                '                                    <span class="material-input"></span>\n' +
                '                                </div>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                        <div class="col-sm-6">\n' +
                '                            <div class="input-group">\n' +
                '                                <span class="input-group-addon">\n' +
                '                                    <i class="fa fa-map-marker" aria-hidden="true"></i>\n' +
                '                                </span>\n' +
                '                                <div class="form-group label-floating">\n' +
                '                                    <label class="control-label">Chuyên ngành\n' +
                '                                        <small class="text-red">*</small>\n' +
                '                                    </label>\n' +
                '                                    <select class="selectpicker form-control" data-show-subtext="true" data-live-search="true">\n' +
                '                                        <option value="0">Vui lòng chọn... </option>\n' +
                '                                        <option value="2">Trung học </option>\n' +
                '                                        <option value="3">Trung cấp</option>\n' +
                '                                        <option value="4">Cao đẳng</option>\n' +
                '                                        <option value="5">Cử nhân</option>\n' +
                '                                        <option value="6">Thạc sĩ </option>\n' +
                '                                    </select>\n' +
                '                                </div>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                    <div class="row">\n' +
                '                        <div class="col-sm-6">\n' +
                '                            <div class="input-group">\n' +
                '                                <span class="input-group-addon">\n' +
                '                                    <i class="fa fa-map-marker" aria-hidden="true"></i>\n' +
                '                                </span>\n' +
                '                                <div class="form-group label-floating">\n' +
                '                                    <label class="control-label">Từ tháng\n' +
                '                                        <small class="text-red">*</small>\n' +
                '                                    </label>\n' +
                '                                    <input type="month" class="form-control" required="">\n' +
                '                                    <span class="material-input"></span>\n' +
                '                                </div>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                        <div class="col-sm-6">\n' +
                '                            <div class="input-group">\n' +
                '                                <span class="input-group-addon">\n' +
                '                                    <i class="fa fa-map-marker" aria-hidden="true"></i>\n' +
                '                                </span>\n' +
                '                                <div class="form-group label-floating">\n' +
                '                                    <label class="control-label">Đến tháng\n' +
                '                                        <small class="text-red">*</small>\n' +
                '                                    </label>\n' +
                '                                    <input type="month" class="form-control" required="">\n' +
                '                                    <span class="material-input"></span>\n' +
                '                                </div>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                </form>\n' +
                '                </div>')
            // return false;
        });
        $('.gb-taohoso-vnwork-info-cv-content-hocvan').on('click', '.gb-btn-close-item', function(e) {
            e.preventDefault();

            $(this).parent().remove();
        });
    });
</script>

<!--THÔNG TIN THAM KHẢO-->
<script>
    $(document).ready(function () {
        $('.gb-taohoso-vnwork-info-cv .btn-add-more-thamkhao').click(function (e) {
            e.preventDefault();
            $('.gb-taohoso-vnwork-info-cv-content-thamkhao').append('<div class="gb-taohoso-kynang-item">\n' +
                '    <span class="gb-btn-close-item">x</span>\n' +
                '    <form action="">\n' +
                '        <div class="row">\n' +
                '            <div class="col-md-6">\n' +
                '                <div class="input-group">\n' +
                '                                    <span class="input-group-addon">\n' +
                '                                        <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                                    </span>\n' +
                '                    <div class="form-group label-floating">\n' +
                '                        <label class="control-label">Họ tên<small class="text-red">*</small></label>\n' +
                '                        <input name="lastname" type="text" class="form-control" required="">\n' +
                '                        <span class="material-input"></span>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>\n' +
                '            <div class="col-md-6">\n' +
                '                <div class="input-group">\n' +
                '                                    <span class="input-group-addon">\n' +
                '                                        <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                                    </span>\n' +
                '                    <div class="form-group label-floating">\n' +
                '                        <label class="control-label">Số điện thoại<small class="text-red">*</small></label>\n' +
                '                        <input name="lastname" type="tel" class="form-control" required="">\n' +
                '                        <span class="material-input"></span>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>\n' +
                '        </div>\n' +
                '        <div class="row">\n' +
                '            <div class="col-md-6">\n' +
                '                <div class="input-group">\n' +
                '                                    <span class="input-group-addon">\n' +
                '                                        <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                                    </span>\n' +
                '                    <div class="form-group label-floating">\n' +
                '                        <label class="control-label">Công ty<small class="text-red">*</small></label>\n' +
                '                        <input name="lastname" type="text" class="form-control" required="">\n' +
                '                        <span class="material-input"></span>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>\n' +
                '            <div class="col-md-6">\n' +
                '                <div class="input-group">\n' +
                '                                    <span class="input-group-addon">\n' +
                '                                        <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                                    </span>\n' +
                '                    <div class="form-group label-floating">\n' +
                '                        <label class="control-label">Chức danh<small class="text-red">*</small></label>\n' +
                '                        <input name="lastname" type="text" class="form-control" required="">\n' +
                '                        <span class="material-input"></span>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>\n' +
                '        </div>\n' +
                '        <div class="row">\n' +
                '            <div class="col-md-12">\n' +
                '                <div class="input-group">\n' +
                '                                    <span class="input-group-addon">\n' +
                '                                        <i class="fa fa-user-o" aria-hidden="true"></i>\n' +
                '                                    </span>\n' +
                '                    <div class="form-group label-floating">\n' +
                '                        <label class="control-label">Email<small class="text-red">*</small></label>\n' +
                '                        <input name="lastname" type="text" class="form-control" required="">\n' +
                '                        <span class="material-input"></span>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>\n' +
                '        </div>\n' +
                '    </form>\n' +
                '</div>')
            // return false;
        });
        $('.gb-taohoso-vnwork-info-cv-content-thamkhao').on('click', '.gb-btn-close-item', function(e) {
            e.preventDefault();

            $(this).parent().remove();
        });
    });
</script>
<script type="text/javascript">
    function country (data) {
        // alert(data.value);
        var nation = data.value;
        if (nation == 1) {
            var cityv = '';
            <?php foreach ($city as $item) { ?>
            cityv = cityv + '<option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>';
            <?php } ?>
            document.getElementById("city").innerHTML = '<option value="">Vui lòng chọn...</option>'+cityv;
        } else {
            document.getElementById("city").innerHTML = '<option value="0">Quốc tế</option>';
        }
        $('.selectpicker').selectpicker('refresh');
    }
</script>