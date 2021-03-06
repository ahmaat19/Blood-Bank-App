import React, { useState, useEffect } from 'react';
import RequestForm from './RequestForm';
import RequestList from './RequestList';
import RequestValidate from '../../validations/RequestValidations';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import {
  getRequests,
  addRequest,
  deleteRequest,
  updateRequest,
} from '../../actions/requestActions';

const initialValues = {
  id: null,
  patient_id: '',
  patient_name: '',
  blood_group: '',
  platelet: '',
  plasma: '',
  rbc: '',
  whole_blood: '',
};

function Request(props) {
  const [values, setValues] = useState(initialValues);
  const [errors, setErrors] = useState({});
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [edit, setEdit] = useState(false);

  const {
    requests,
    deleteRequest,
    getRequests,
    addRequest,
    updateRequest,
  } = props;

  const handleChange = (e) => {
    setValues({ ...values, [e.target.name]: e.target.value });
  };

  const handleUpdate = (e) => {
    console.log(e);
    setValues({
      ...values,
      id: e.id,
      patient_id: e.patient_id,
      patient_name: e.patient_name,
      blood_group: e.blood_group,
      platelet: e.platelet,
      plasma: e.plasma,
      rbc: e.rbc,
      whole_blood: e.whole_blood,
    });
    setEdit(true);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    setErrors(RequestValidate(values));
    setIsSubmitting(true);
  };

  useEffect(() => {
    getRequests();
  }, []);

  useEffect(() => {
    if (Object.keys(errors).length === 0 && isSubmitting) {
      const newValues = {
        id: values.id,
        patient_id: values.patient_id.toUpperCase(),
        patient_name: values.patient_name,
        blood_group: values.blood_group,
        platelet: values.platelet,
        plasma: values.plasma,
        rbc: values.rbc,
        whole_blood: values.whole_blood,
      };
      edit ? updateRequest(newValues) : addRequest(newValues);

      setEdit(false);
      setValues({
        ...values,
        patient_id: '',
        patient_name: '',
        blood_group: '',
        platelet: '',
        plasma: '',
        rbc: '',
        whole_blood: '',
      });
    }
  }, [errors]);

  return (
    <div className='row pt-4'>
      <div className='col-md-4'>
        <RequestForm
          handleSubmit={handleSubmit}
          handleChange={handleChange}
          errors={errors}
          values={values}
        />
      </div>
      <div className='col-md-8'>
        <RequestList
          handleUpdate={handleUpdate}
          deleteRequest={deleteRequest}
          requests={requests}
        />
      </div>
    </div>
  );
}

Request.propTypes = {
  getRequests: PropTypes.func.isRequired,
  addRequest: PropTypes.func.isRequired,
  deleteRequest: PropTypes.func.isRequired,
  updateRequest: PropTypes.func.isRequired,
  requests: PropTypes.array.isRequired,
};

const mapStateToProps = (state) => ({
  requests: state.requests.requests,
});

export default connect(mapStateToProps, {
  getRequests,
  addRequest,
  updateRequest,
  deleteRequest,
})(Request);
