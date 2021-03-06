import React, { Component, Fragment } from 'react';
import { withAlert } from 'react-alert';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';

class Alerts extends Component {
  static propTypes = {
    error: PropTypes.object.isRequired,
    message: PropTypes.object.isRequired,
  };

  componentDidUpdate(prevProps) {
    const { error, alert, message } = this.props;
    if (error !== prevProps.error) {
      error.msg.non_field_errors && alert.error(error.msg.non_field_errors);
      error.msg.username && alert.error(error.msg.username);
      error.msg.old_password && alert.error(error.msg.old_password);
      error.msg.new_password && alert.error(error.msg.new_password);
      error.msg.email && alert.error(error.msg.email);

      error.msg.donor && alert.error(`Donor: ${error.msg.donor}`);
      error.msg.blood_group &&
        alert.error(`Blood Group: ${error.msg.blood_group}`);
      error.msg.blood_component &&
        alert.error(`Blood Component: ${error.msg.blood_component}`);
      error.msg.unit && alert.error(`Unit: ${error.msg.unit}`);
      error.msg.bag && alert.error(`Bag: ${error.msg.bag}`);
      error.msg.hb && alert.error(`HB: ${error.msg.hb}`);
      error.msg.non_field_errors && alert.error(error.msg.non_field_errors);
      error.msg.plasma && alert.error(`Plasma: ${error.msg.plasma}`);
      error.msg.platelet && alert.error(`Platelet: ${error.msg.platelet}`);
      error.msg.rbc && alert.error(`RBC: ${error.msg.rbc}`);
      error.msg.whole_blood &&
        alert.error(`Whole blood: ${error.msg.whole_blood}`);
    }
    if (message !== prevProps.message) {
      message.changePassword && alert.success(message.changePassword);
      message.resetPassword && alert.success(message.resetPassword);
      message.detail && alert.success(message.detail);

      message.deleteInventory && alert.success(message.deleteInventory);
      message.addInventory && alert.success(message.addInventory);
      message.updateInventory && alert.success(message.updateInventory);

      message.deleteRequest && alert.success(message.deleteRequest);
      message.addRequest && alert.success(message.addRequest);
      message.updateRequest && alert.success(message.updateRequest);

      message.deleteTake && alert.success(message.deleteTake);
      message.addTake && alert.success(message.addTake);
      message.updateTake && alert.success(message.updateTake);
    }
  }

  render() {
    return <Fragment />;
  }
}
const mapStateToProps = (state) => ({
  error: state.errors,
  message: state.messages,
});
export default connect(mapStateToProps)(withAlert()(Alerts));
