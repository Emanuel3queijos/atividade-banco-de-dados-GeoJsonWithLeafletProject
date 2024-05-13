import axios from "axios";

// esse cara vai fazer os requests, ta no nome ate. seu macaco burro do krl
const request = async (method, url, data) => {
  try {
    const response = await axios({
      method: method,
      url: url,
      data: data,
    });
    return response.data;
  } catch (error) {
    throw error.response.data;
  }
};

export default request;
