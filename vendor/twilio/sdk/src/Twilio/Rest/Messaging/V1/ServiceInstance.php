<?php

/**
 * This code was generated by
 * \ / _    _  _|   _  _
 * | (_)\/(_)(_|\/| |(/_  v1.0.0
 * /       /
 */

namespace Twilio\Rest\Messaging\V1;

use Twilio\Deserialize;
use Twilio\Exceptions\TwilioException;
use Twilio\InstanceResource;
use Twilio\Options;
use Twilio\Rest\Messaging\V1\Service\AlphaSenderList;
use Twilio\Rest\Messaging\V1\Service\PhoneNumberList;
use Twilio\Rest\Messaging\V1\Service\ShortCodeList;
use Twilio\Rest\Messaging\V1\Service\UsAppToPersonList;
use Twilio\Rest\Messaging\V1\Service\UsAppToPersonUsecaseList;
use Twilio\Values;
use Twilio\Version;

/**
 * PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
 *
 * @property string $sid
 * @property string $accountSid
 * @property string $friendlyName
 * @property \DateTime $dateCreated
 * @property \DateTime $dateUpdated
 * @property string $inboundRequestUrl
 * @property string $inboundMethod
 * @property string $fallbackUrl
 * @property string $fallbackMethod
 * @property string $statusCallback
 * @property bool $stickySender
 * @property bool $mmsConverter
 * @property bool $smartEncoding
 * @property string $scanMessageContent
 * @property bool $fallbackToLongCode
 * @property bool $areaCodeGeomatch
 * @property bool $synchronousValidation
 * @property int $validityPeriod
 * @property string $url
 * @property array $links
 */
class ServiceInstance extends InstanceResource {
    protected $_phoneNumbers;
    protected $_shortCodes;
    protected $_alphaSenders;
    protected $_usAppToPerson;
    protected $_usAppToPersonUsecases;

    /**
     * Initialize the ServiceInstance
     *
     * @param Version $version Version that contains the resource
     * @param mixed[] $payload The response payload
     * @param string $sid The SID that identifies the resource to fetch
     */
    public function __construct(Version $version, array $payload, string $sid = null) {
        parent::__construct($version);

        // Marshaled Properties
        $this->properties = [
            'sid' => Values::array_get($payload, 'sid'),
            'accountSid' => Values::array_get($payload, 'account_sid'),
            'friendlyName' => Values::array_get($payload, 'friendly_name'),
            'dateCreated' => Deserialize::dateTime(Values::array_get($payload, 'date_created')),
            'dateUpdated' => Deserialize::dateTime(Values::array_get($payload, 'date_updated')),
            'inboundRequestUrl' => Values::array_get($payload, 'inbound_request_url'),
            'inboundMethod' => Values::array_get($payload, 'inbound_method'),
            'fallbackUrl' => Values::array_get($payload, 'fallback_url'),
            'fallbackMethod' => Values::array_get($payload, 'fallback_method'),
            'statusCallback' => Values::array_get($payload, 'status_callback'),
            'stickySender' => Values::array_get($payload, 'sticky_sender'),
            'mmsConverter' => Values::array_get($payload, 'mms_converter'),
            'smartEncoding' => Values::array_get($payload, 'smart_encoding'),
            'scanMessageContent' => Values::array_get($payload, 'scan_message_content'),
            'fallbackToLongCode' => Values::array_get($payload, 'fallback_to_long_code'),
            'areaCodeGeomatch' => Values::array_get($payload, 'area_code_geomatch'),
            'synchronousValidation' => Values::array_get($payload, 'synchronous_validation'),
            'validityPeriod' => Values::array_get($payload, 'validity_period'),
            'url' => Values::array_get($payload, 'url'),
            'links' => Values::array_get($payload, 'links'),
        ];

        $this->solution = ['sid' => $sid ?: $this->properties['sid'], ];
    }

    /**
     * Generate an instance context for the instance, the context is capable of
     * performing various actions.  All instance actions are proxied to the context
     *
     * @return ServiceContext Context for this ServiceInstance
     */
    protected function proxy(): ServiceContext {
        if (!$this->context) {
            $this->context = new ServiceContext($this->version, $this->solution['sid']);
        }

        return $this->context;
    }

    /**
     * Update the ServiceInstance
     *
     * @param array|Options $options Optional Arguments
     * @return ServiceInstance Updated ServiceInstance
     * @throws TwilioException When an HTTP error occurs.
     */
    public function update(array $options = []): ServiceInstance {
        return $this->proxy()->update($options);
    }

    /**
     * Fetch the ServiceInstance
     *
     * @return ServiceInstance Fetched ServiceInstance
     * @throws TwilioException When an HTTP error occurs.
     */
    public function fetch(): ServiceInstance {
        return $this->proxy()->fetch();
    }

    /**
     * Delete the ServiceInstance
     *
     * @return bool True if delete succeeds, false otherwise
     * @throws TwilioException When an HTTP error occurs.
     */
    public function delete(): bool {
        return $this->proxy()->delete();
    }

    /**
     * Access the phoneNumbers
     */
    protected function getPhoneNumbers(): PhoneNumberList {
        return $this->proxy()->phoneNumbers;
    }

    /**
     * Access the shortCodes
     */
    protected function getShortCodes(): ShortCodeList {
        return $this->proxy()->shortCodes;
    }

    /**
     * Access the alphaSenders
     */
    protected function getAlphaSenders(): AlphaSenderList {
        return $this->proxy()->alphaSenders;
    }

    /**
     * Access the usAppToPerson
     */
    protected function getUsAppToPerson(): UsAppToPersonList {
        return $this->proxy()->usAppToPerson;
    }

    /**
     * Access the usAppToPersonUsecases
     */
    protected function getUsAppToPersonUsecases(): UsAppToPersonUsecaseList {
        return $this->proxy()->usAppToPersonUsecases;
    }

    /**
     * Magic getter to access properties
     *
     * @param string $name Property to access
     * @return mixed The requested property
     * @throws TwilioException For unknown properties
     */
    public function __get(string $name) {
        if (\array_key_exists($name, $this->properties)) {
            return $this->properties[$name];
        }

        if (\property_exists($this, '_' . $name)) {
            $method = 'get' . \ucfirst($name);
            return $this->$method();
        }

        throw new TwilioException('Unknown property: ' . $name);
    }

    /**
     * Provide a friendly representation
     *
     * @return string Machine friendly representation
     */
    public function __toString(): string {
        $context = [];
        foreach ($this->solution as $key => $value) {
            $context[] = "$key=$value";
        }
        return '[Twilio.Messaging.V1.ServiceInstance ' . \implode(' ', $context) . ']';
    }
}